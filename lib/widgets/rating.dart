import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  final List<bool> _active = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
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
        )
      ],
    );
  }

  _fillInStars(int start, int end, bool fill) {
    for (int i = start - 1; i < end; i++) {
      _active[i] = fill;
    }
  }
}
