import 'package:flutter/material.dart';
import 'package:mams_city_guide/dummy_data.dart';
import 'package:mams_city_guide/widgets/custom_card.dart';

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
          child: CustomCard(
            title: kEvents[index].name,
            description: kEvents[index].description,
            location: kEvents[index].place.location,
            images: kEvents[index].images,
          ),
        ),
      ),
    );
  }
}
