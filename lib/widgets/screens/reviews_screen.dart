import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mams_city_guide/models/review.dart';
import 'package:mams_city_guide/stores/reviews_store.dart';
import 'package:provider/provider.dart';

class ReviewsScreen extends StatefulWidget {
  final String objectName;
  final ReviewType type;

  const ReviewsScreen({
    Key? key,
    required this.objectName,
    required this.type,
  }) : super(key: key);

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  final _controller = TextEditingController();
  final List<bool> _active = List.filled(5, false);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('eee');
    final store = Provider.of<ReviewsStore>(context);

    return Observer(
      builder: (context) {
        List<Review> reviews;
        if (widget.type == ReviewType.place) {
          reviews = store.placesReviews
              .where((review) => review.objectName == widget.objectName)
              .toList();
        } else {
          reviews = store.accomodationsReviews
              .where((review) => review.objectName == widget.objectName)
              .toList();
        }
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Reviews'),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: reviews.length,
                    itemBuilder: (context, index) => _review(reviews, index),
                  ),
                ),
                const SizedBox(height: 16),
                _ratingButtons(),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              setState(() {});
                            }
                          },
                          controller: _controller,
                          minLines: 1,
                          maxLines: 5,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Review...',
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed:
                            _active.contains(true) && _controller.text != ''
                                ? () => _handleTap(store)
                                : null,
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.edit),
                        ),
                      ),
                    ],
                  ),
                ),
                if (!_active.contains(true) || _controller.text == '')
                  const Text(
                    'Select a rating and write a review.',
                    style: TextStyle(color: Colors.red),
                  ),
                if (!_active.contains(true) || _controller.text == '')
                  const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }

  void _handleTap(ReviewsStore store) {
    FocusManager.instance.primaryFocus?.unfocus();
    if (widget.type == ReviewType.place) {
      store.addPlaceReview(
        PlaceReview(
          objectName: widget.objectName,
          rating: _calculateRating(),
          comment: _controller.text,
        ),
      );
    } else {
      store.addAccomodationReview(
        AccomodationReview(
          objectName: widget.objectName,
          rating: _calculateRating(),
          comment: _controller.text,
        ),
      );
    }
    _controller.text = '';
  }

  Widget _review(List<Review> reviews, int index) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Text(
              'Review',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(reviews[index].comment, textAlign: TextAlign.justify),
            const SizedBox(height: 12),
            _reviewRating(reviews[index].rating),
            const SizedBox(height: 8)
          ],
        ),
      ),
    );
  }

  Widget _ratingButtons() {
    const emptyStar = Icon(
      Icons.star_border,
      color: Colors.amber,
      size: 32,
    );
    const fullStar = Icon(
      Icons.star,
      color: Colors.amber,
      size: 32,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: _active[0] ? fullStar : emptyStar,
          onTap: () {
            setState(() {
              if (_active[0]) {
                if (!_active[1]) {
                  _active[0] = false;
                }
                _fillInStars(2, 5, false);
              } else {
                _active[0] = true;
              }
            });
          },
        ),
        const SizedBox(width: 8),
        GestureDetector(
          child: _active[1] ? fullStar : emptyStar,
          onTap: () {
            setState(() {
              if (_active[1]) {
                if (!_active[2]) {
                  _fillInStars(1, 2, false);
                }
                _fillInStars(3, 5, false);
              } else {
                _fillInStars(1, 2, true);
              }
            });
          },
        ),
        const SizedBox(width: 8),
        GestureDetector(
          child: _active[2] ? fullStar : emptyStar,
          onTap: () {
            setState(() {
              if (_active[2]) {
                if (!_active[3]) {
                  _fillInStars(1, 3, false);
                }
                _fillInStars(4, 5, false);
              } else {
                _fillInStars(1, 3, true);
              }
            });
          },
        ),
        const SizedBox(width: 8),
        GestureDetector(
          child: _active[3] ? fullStar : emptyStar,
          onTap: () {
            setState(() {
              if (_active[3]) {
                if (!_active[4]) {
                  _fillInStars(1, 4, false);
                }
                _active[4] = false;
              } else {
                _fillInStars(1, 4, true);
              }
            });
          },
        ),
        const SizedBox(width: 8),
        GestureDetector(
          child: _active[4] ? fullStar : emptyStar,
          onTap: () {
            setState(() {
              if (_active[4]) {
                _fillInStars(1, 5, false);
              } else {
                _fillInStars(1, 5, true);
              }
            });
          },
        ),
      ],
    );
  }

  _fillInStars(int start, int end, bool fill) {
    for (int i = start - 1; i < end; i++) {
      _active[i] = fill;
    }
  }

  int _calculateRating() {
    int rating = 0;
    for (bool isActive in _active) {
      if (isActive) rating++;
    }
    return rating;
  }

  Widget _reviewRating(int rating) {
    List<Widget> stars = [];
    for (int i = 0; i < rating; i++) {
      stars.add(
        const Icon(
          Icons.star,
          color: Colors.amber,
        ),
      );
    }
    for (int i = 0; i < 5 - rating; i++) {
      stars.add(
        const Icon(
          Icons.star_border,
          color: Colors.amber,
        ),
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...stars,
      ],
    );
  }
}

enum ReviewType { place, accomodation }
