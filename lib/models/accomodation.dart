import 'package:mams_city_guide/models/location.dart';

class Accomodation {
  final String name;
  final String description;
  final Location location;
  final List<String> images;

  const Accomodation({
    required this.name,
    required this.description,
    required this.location,
    required this.images,
  });
}
