import 'package:mams_city_guide/models/place.dart';

class Event {
  final String name;
  final String description;
  final Place place;
  final List<String> images;

  const Event({
    required this.name,
    required this.description,
    required this.place,
    required this.images,
  });
}
