import 'package:flutter/material.dart';
import '../model/size.dart';
import '../constants/colors.dart';

class ButtonItem extends StatelessWidget {
  final Size size;
  final VoidCallback onTap;
  ButtonItem({Key? key, required this.size, required this.onTap}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(size.isActive == 1 ? btnActive : btnDefalut),
      ),
      child: Text('${size.sizeTitle}'),
    );
  }
}