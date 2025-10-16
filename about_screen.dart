import 'package:flutter/material.dart';
import '/app_drawer.dart';

class AboutScreen extends StatelessWidget {
  final List<Map<String, String>> landmarks = [
    {'image': 'assets/images/eiffel.jpeg', 'caption': 'Eiffel Tower'},
    {'image': 'assets/images/greatwall.jpeg', 'caption': 'Great Wall of China'},
    {'image': 'assets/images/tajmahal.jpeg', 'caption': 'Taj Mahal'},
    {'image': 'assets/images/machupicchu.jpeg', 'caption': 'Machu Picchu'},
    {'image': 'assets/images/liberty.jpeg', 'caption': 'Statue of Liberty'},
    {'image': 'assets/images/opera.jpg', 'caption': 'Sydney Opera House'},
  ];

  AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About - Landmarks')),
      drawer: const AppDrawer(),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.9,
          ),
          itemCount: landmarks.length,
          itemBuilder: (context, index) {
            final item = landmarks[index];
            return Column(
              children: [
                Expanded(
                  child: Image.asset(
                    item['image']!,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  item['caption']!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
