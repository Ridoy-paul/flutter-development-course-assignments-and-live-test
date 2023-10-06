import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonColorChanger(),
    );
  }
}

class ButtonColorChanger extends StatefulWidget {
  @override
  _ButtonColorChangerState createState() => _ButtonColorChangerState();
}

class _ButtonColorChangerState extends State<ButtonColorChanger> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
