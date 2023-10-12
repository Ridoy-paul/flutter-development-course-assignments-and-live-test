import 'package:flutter/material.dart';
import 'constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: tdBgColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: tdBgBlack,
          )
        ],
      ),
    );
  }
}
