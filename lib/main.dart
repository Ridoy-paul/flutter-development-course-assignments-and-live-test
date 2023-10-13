import 'package:flutter/material.dart';
import 'homeScreen.dart';

void main() => runApp(const SelectItemApp());

class SelectItemApp extends StatelessWidget {
  const SelectItemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
