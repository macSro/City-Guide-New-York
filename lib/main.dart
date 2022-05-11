import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mams_city_guide/stores/reviews_store.dart';
import 'package:mams_city_guide/widgets/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    Provider(
      create: (_) => ReviewsStore(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'New York Guide',
      theme: ThemeData.light(),
      home: const HomeScreen(),
    );
  }
}
