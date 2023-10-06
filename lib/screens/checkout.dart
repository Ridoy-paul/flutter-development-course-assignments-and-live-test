import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // height: 10.h,
              margin: EdgeInsets.only(bottom: 5),
              child: const Text(
                "My Bag",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 65.h,
              color: Colors.deepPurple,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext, context) {

                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
