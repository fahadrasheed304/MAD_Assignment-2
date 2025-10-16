import 'package:flutter/material.dart';
import '/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Travel Guide')),
      drawer: const AppDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Welcome to the Travel Guide App! Discover amazing destinations, plan your next adventure, and learn about famous landmarks around the world.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),

              RichText(
                text: const TextSpan(
                  text: 'Explore the ',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'World ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(text: 'with us!'),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Enter destination name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  final dest = _controller.text;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        dest.isEmpty
                            ? 'Please enter a destination!'
                            : 'Searching for $dest...',
                      ),
                    ),
                  );
                },
                child: const Text('Search'),
              ),
              TextButton(
                onPressed: () {
                  print('Text Button Pressed!');
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Explore more coming soon!'),
                    ),
                  );
                },
                child: const Text('Learn More'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
