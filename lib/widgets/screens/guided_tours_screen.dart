import 'package:flutter/material.dart';
import 'package:mams_city_guide/dummy_data.dart';
import 'package:mams_city_guide/widgets/screens/guided_tour_screen.dart';

class GuidedToursScreen extends StatelessWidget {
  const GuidedToursScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Guided tours')),
      body: ListView.builder(
        itemCount: kGuidedTours.length,
        itemBuilder: (context, index) => Card(
          shape: const BeveledRectangleBorder(),
          elevation: 4,
          child: ListTile(
            leading: const Icon(
              Icons.map,
              color: Colors.blue,
            ),
            title: Text(
              kGuidedTours[index].name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => GuidedTourScreen(
                  guidedTour: kGuidedTours[index],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
