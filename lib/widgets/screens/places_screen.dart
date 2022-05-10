import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mams_city_guide/dummy_data.dart';
import 'package:mams_city_guide/stores/reviews_store.dart';
import 'package:mams_city_guide/widgets/custom_card.dart';
import 'package:provider/provider.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ReviewsStore>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Places'),
      ),
      body: Observer(
        builder: (context) => ListView.builder(
          itemCount: kPlaces.length,
          itemBuilder: (context, index) => Padding(
            padding: index == 0
                ? const EdgeInsets.all(8)
                : const EdgeInsets.only(left: 8, right: 8, bottom: 8),
            child: CustomCard(
              title: kPlaces[index].name,
              description: kPlaces[index].description,
              location: kPlaces[index].location,
              images: kPlaces[index].images,
              reviews: store.placesReviews
                  .where((review) => review.objectName == kPlaces[index].name)
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
