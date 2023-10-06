import 'package:flutter/material.dart';
import '../model/size.dart';
import '../widgets/buttonItem.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final sizeList = Size.sizeList();

  void _showSnackbar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
      duration: Duration(seconds: 1),
    ));
  }

  _onButtonTap(Size selectedItem) {
    setState(() {
      for (var size in sizeList) {
         selectedItem.id == size.id ? size.isActive = 1 : size.isActive = 0;
      }
    });
    _showSnackbar('Selected Size: ${selectedItem.sizeTitle}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Selector'),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.start,
          spacing: 8,
          runSpacing: 8,
          children: [
            for (Size size in sizeList)
              ButtonItem(
                size: size,
                onTap: () => _onButtonTap(size),
              ),
          ],
        ),
      ),
    );
  }
}
