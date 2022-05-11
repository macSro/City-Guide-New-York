import 'package:flutter/material.dart';
import 'package:mams_city_guide/models/location.dart';
import 'package:mams_city_guide/models/review.dart';
import 'package:mams_city_guide/widgets/audio_player.dart';
import 'package:mams_city_guide/widgets/screens/reviews_screen.dart';
import 'package:maps_launcher/maps_launcher.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String description;
  final Location location;
  final List<String> images;
  final List<Review>? reviews;
  final String? recording;
  final String? video;

  const CustomCard({
    Key? key,
    required this.title,
    required this.description,
    required this.location,
    required this.images,
    this.reviews,
    this.recording,
    this.video,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const BeveledRectangleBorder(),
      elevation: 4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _eventCardHeader(context),
          Padding(
            padding: const EdgeInsets.all(12),
            child: _eventCardDetails(context),
          ),
        ],
      ),
    );
  }

  Widget _eventCardHeader(context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: Colors.white),
      ),
    );
  }

  Widget _eventCardDetails(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Details',
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            if (recording != null) CustomAudioPlayer(recording: recording!),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          description,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 16),
        Text(
          'Location',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 6),
        _placeLink(),
        const SizedBox(height: 16),
        if (reviews != null)
          Text(
            'Rating',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        if (reviews != null) const SizedBox(height: 6),
        if (reviews != null) _rating(context),
        if (reviews != null) const SizedBox(height: 16),
        if (images.isNotEmpty)
          Text(
            'Gallery',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        if (images.isNotEmpty) const SizedBox(height: 12),
        if (images.isNotEmpty) _gallery(),
        if (images.isNotEmpty) const SizedBox(height: 8),
      ],
    );
  }

  Widget _placeLink() {
    return GestureDetector(
      child: Text(
        location.label,
        style: const TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
      onTap: () => MapsLauncher.launchCoordinates(
        location.latitude,
        location.longitude,
        location.label,
      ),
    );
  }

  Widget _rating(context) {
    final rating = Review.calculateAverage(reviews!);
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
        const SizedBox(width: 8),
        if (reviews!.isEmpty) const Text('No reviews'),
        if (reviews!.isNotEmpty)
          GestureDetector(
            child: const Text(
              'Check reviews',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReviewsScreen(
                  objectName: title,
                  type: (reviews!.runtimeType == List<PlaceReview>)
                      ? ReviewType.place
                      : ReviewType.accomodation,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _gallery() {
    return SizedBox(
      height: 200.0,
      child: PageView.builder(
        itemCount: images.length,
        controller: PageController(viewportFraction: 0.7),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/${images[index]}',
            ),
          );
        },
      ),
    );
  }
}
