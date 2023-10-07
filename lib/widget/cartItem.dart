import 'package:flutter/material.dart';
import '../model/cart.dart';
import '../constants/colors.dart';

class CartItem extends StatefulWidget {
  final Cart cartItem;

  CartItem({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  @override
  Widget build(BuildContext context) {

    return Card(

      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Adjust the value as needed for the desired border radius
      ),
      child: ListTile(
        leading: Image.network(
          widget.cartItem.productImage ?? "",
          fit: BoxFit.cover,
        ),
        title: Text(
          widget.cartItem.productName ?? "",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Color: ",
                    style: TextStyle(
                      color: tdBgBlack,
                    ), // Default color for "Color:"
                  ),
                  TextSpan(
                    text: "${widget.cartItem.color ?? ""}",
                    style: TextStyle(
                        color: tdColorBlack,
                        fontWeight:
                            FontWeight.bold), // Highlighted color for "Black"
                  ),
                  TextSpan(
                    text: "  Size: ",
                    style: TextStyle(
                      color: tdBgBlack,
                    ), // Default color for "Color:"
                  ),
                  TextSpan(
                    text: "${widget.cartItem.size ?? ""}",
                    style: TextStyle(
                      color: tdColorBlack,
                      fontWeight: FontWeight.bold,
                    ), // Highlighted color for "Black"
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 9),
                      child: ElevatedButton(
                        onPressed: () {
                          if (widget.cartItem.quantity! > 1) {
                            widget.cartItem.quantity = widget.cartItem.quantity! - 1;
                            //widget.onQuantityChanged(widget.cartItem.quantity!);
                            setState(() {});
                          }
                        },
                        child: Icon(
                          Icons.remove,
                          color: tdBgBlack,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(0),
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Text(
                        widget.cartItem.quantity.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        widget.cartItem.quantity = widget.cartItem.quantity! + 1;
                        setState(() {});
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
                Text(
                  "${widget.cartItem.price}\$",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: tdBgBlack),
                ),
              ],
            )
          ],
        ),
        trailing: Icon(Icons.more_vert),
        isThreeLine: true,
      ),
    );
  }

}
