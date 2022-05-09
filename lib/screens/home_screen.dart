import 'package:flutter/material.dart';
import 'package:mams_city_guide/screens/accomodations_screen.dart';
import 'package:mams_city_guide/screens/events_screen.dart';
import 'package:mams_city_guide/screens/guided_tours_screen.dart';
import 'package:mams_city_guide/screens/places_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Flexible(
              child: Row(
                children: [
                  Flexible(
                    child: _menuTile(
                      context,
                      backgroundColor: const Color.fromARGB(255, 4, 89, 158),
                      icon: Icons.event,
                      title: 'Events',
                      navigator: (context) => const EventsScreen(),
                    ),
                  ),
                  Flexible(
                    child: _menuTile(
                      context,
                      backgroundColor: const Color.fromARGB(255, 30, 145, 240),
                      icon: Icons.map,
                      title: 'Guided tours',
                      navigator: (context) => const GuidedToursScreen(),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                children: [
                  Flexible(
                    child: _menuTile(
                      context,
                      backgroundColor: const Color.fromARGB(255, 30, 145, 240),
                      icon: Icons.place,
                      title: 'Places',
                      navigator: (context) => const PlacesScreen(),
                    ),
                  ),
                  Flexible(
                    child: _menuTile(
                      context,
                      backgroundColor: const Color.fromARGB(255, 4, 89, 158),
                      icon: Icons.home,
                      title: 'Accomodations',
                      navigator: (context) => const AccomodationsScreen(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuTile(
    context, {
    required backgroundColor,
    required IconData icon,
    required String title,
    required Widget Function(BuildContext) navigator,
  }) {
    return Ink(
      color: backgroundColor,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: navigator,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 50,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
