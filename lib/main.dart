import 'package:flutter/material.dart';
import 'homeScreen.dart';

void main() => runApp(const WeatherInfoApp());

class WeatherInfoApp extends StatelessWidget {
  const WeatherInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
