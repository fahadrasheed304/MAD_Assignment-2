import 'package:flutter/material.dart';
import '/home_screen.dart';

void main() {
  runApp(TravelGuideApp());
}

class TravelGuideApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Guide App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}
