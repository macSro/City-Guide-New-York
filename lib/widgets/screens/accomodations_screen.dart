import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mams_city_guide/dummy_data.dart';
import 'package:mams_city_guide/stores/reviews_store.dart';
import 'package:mams_city_guide/widgets/custom_card.dart';
import 'package:provider/provider.dart';

class AccomodationsScreen extends StatelessWidget {
  const AccomodationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ReviewsStore>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Accomodations'),
      ),
      body: Observer(
        builder: (context) => ListView.builder(
          itemCount: kAccomodations.length,
          itemBuilder: (context, index) => Padding(
            padding: index == 0
                ? const EdgeInsets.all(8)
                : const EdgeInsets.only(left: 8, right: 8, bottom: 8),
            child: CustomCard(
              title: kAccomodations[index].name,
              description: kAccomodations[index].description,
              location: kAccomodations[index].location,
              images: kAccomodations[index].images,
              reviews: store.accomodationsReviews
                  .where((review) =>
                      review.objectName == kAccomodations[index].name)
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
