import 'package:flutter/material.dart';
import 'screen/product_list_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photo Gallery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PhotoListScreen(),
    );
  }
}
