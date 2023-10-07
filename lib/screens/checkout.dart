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
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(top: 1.h, left: 1.w, right: 1.w),
                margin: EdgeInsets.only(top: 1.h),
                height: Adaptive.h(15),
                //color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subtotal:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Text("100.0", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(height: 1.h,),

                    Material(
                      color: Color(0xFF674AEF),
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                          child: Center(
                            child: const Text(
                              "Checkout",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
