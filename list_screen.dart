import 'package:flutter/material.dart';
import 'app_drawer.dart';

class ListScreen extends StatelessWidget {
  final List<Map<String, String>> destinations = [
    {'name': 'Paris', 'desc': 'The city of lights and love.'},
    {'name': 'Tokyo', 'desc': 'A blend of tradition and technology.'},
    {'name': 'New York', 'desc': 'The city that never sleeps.'},
    {'name': 'Rome', 'desc': 'A journey into ancient history.'},
    {'name': 'Bali', 'desc': 'A tropical paradise for relaxation.'},
    {'name': 'Dubai', 'desc': 'Luxury and adventure in one city.'},
    {'name': 'Istanbul', 'desc': 'Where East meets West.'},
    {'name': 'London', 'desc': 'Classic charm with modern vibes.'},
    {'name': 'Sydney', 'desc': 'Home of the iconic Opera House.'},
    {'name': 'Cape Town', 'desc': 'Mountains, beaches, and vineyards.'},
  ];

  ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Travel Destinations')),
      drawer: const AppDrawer(),
      body: SafeArea(
        child: ListView.builder(
          itemCount: destinations.length,
          itemBuilder: (context, index) {
            final place = destinations[index];
            return Card(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                leading: const Icon(Icons.location_on, color: Colors.blueAccent),
                title: Text(place['name']!),
                subtitle: Text(place['desc']!),
              ),
            );
          },
        ),
      ),
    );
  }
}
