import 'package:mams_city_guide/models/location.dart';

class Place {
  final String name;
  final String description;
  final String recording;
  final Location location;
  final List<String> images;
  final String video;

  const Place({
    required this.name,
    required this.description,
    required this.recording,
    required this.location,
    required this.images,
    required this.video,
  });
}
