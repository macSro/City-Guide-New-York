import 'package:flutter/material.dart';
import 'package:mams_city_guide/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New York Guide',
      theme: ThemeData.light(),
      home: const HomeScreen(),
    );
  }
}
