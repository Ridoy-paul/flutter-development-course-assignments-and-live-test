import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../model/cart.dart';
import '../widget/cartItem.dart';

class CheckoutScreen extends StatefulWidget {
  CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final cartList = Cart.cartList();

  int get total => cartList
      .map((cartItem) => int.parse(cartItem.price ?? "0") * cartItem.quantity!)
      .reduce((sum, element) => sum + element);

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
              child: ListView.builder(
                itemCount: Cart.cartList().length,
                itemBuilder: (BuildContext context, int index) {
                  Cart cart = Cart.cartList()[index];
                  return CartItem(
                    cartItem: cart,
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(top: 1.h, left: 1.w, right: 1.w),
                margin: EdgeInsets.only(top: 1.h),
                height: Adaptive.h(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       const Text(
                          "Total Amount:",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "$total\$",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Material(
                      color: Color(0xFF674AEF),
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Congratulations! Checkout successful!'),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                          child: Center(
                            child: const Text(
                              "Checkout",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
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
