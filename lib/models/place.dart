import 'package:mams_city_guide/models/location.dart';

class Place {
  final String name;
  final String descriptionText;
  final String descriptionVoice;
  final Location location;
  final List<String> images;
  final String video;

  const Place({
    required this.name,
    required this.descriptionText,
    required this.descriptionVoice,
    required this.location,
    required this.images,
    required this.video,
  });
}
