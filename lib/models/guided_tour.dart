import 'package:mams_city_guide/models/place.dart';

class GuidedTour {
  final String name;
  final String description;
  final List<Place> places;

  const GuidedTour({
    required this.name,
    required this.description,
    required this.places,
  });
}
