import 'package:flutter/material.dart';
import 'package:mams_city_guide/dummy_data.dart';
import 'package:mams_city_guide/models/event.dart';
import 'package:mams_city_guide/models/place.dart';
import 'package:maps_launcher/maps_launcher.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events'),
      ),
      body: ListView.builder(
        itemCount: kEvents.length,
        itemBuilder: (context, index) => Padding(
          padding: index == 0
              ? const EdgeInsets.all(8)
              : const EdgeInsets.only(left: 8, right: 8, bottom: 8),
          child: _eventCard(context, kEvents[index]),
        ),
      ),
    );
  }

  Widget _eventCard(context, Event event) {
    return Card(
      shape: const BeveledRectangleBorder(),
      elevation: 4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _eventCardHeader(context, event.name),
          Padding(
            padding: const EdgeInsets.all(12),
            child: _eventCardDetails(context, event),
          )
        ],
      ),
    );
  }

  Widget _eventCardHeader(context, String eventName) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        eventName,
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: Colors.white),
      ),
    );
  }

  Widget _eventCardDetails(context, Event event) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Details',
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 6),
        Text(
          event.description,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 16),
        Text(
          'Place',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 6),
        _placeLink(event.place),
        const SizedBox(height: 16),
        if (event.images.isNotEmpty)
          Text(
            'Gallery',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        if (event.images.isNotEmpty) const SizedBox(height: 12),
        if (event.images.isNotEmpty) _gallery(event.images),
        if (event.images.isNotEmpty) const SizedBox(height: 8),
      ],
    );
  }

  Widget _placeLink(Place place) {
    return GestureDetector(
      child: Text(
        place.name,
        style: const TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
      onTap: () => MapsLauncher.launchCoordinates(
        place.location.latitude,
        place.location.longitude,
      ),
    );
  }

  Widget _gallery(List<String> images) {
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
