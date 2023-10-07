class Cart {
  int? id;
  String? productName;
  String? productImage;
  String? color;
  String? size;
  int? quantity;
  String? price;

  Cart({
    this.id,
    this.productName,
    this.productImage,
    this.color,
    this.size,
    this.quantity,
    this.price,
  });

  static List<Cart> cartList() {
    return [
      Cart(
        id: 1,
        productName: "Xiaomi Poco F5",
        productImage: "https://topmobileinfo.com/images/products/xiaomi-poco-f5-mobile1767162616630687.png",
        color: "Black",
        size: "M",
        quantity: 1,
        price: "100",
      ),
      Cart(
        id: 1,
        productName: "Xiaomi Civi 3",
        productImage: "https://topmobileinfo.com/images/products/xiaomi-civi-3-mobile1767072212741678.png",
        color: "Black",
        size: "S",
        quantity: 1,
        price: "100",
      ),
      Cart(
        id: 1,
        productName: "Realme 11 Pro+",
        productImage: "https://topmobileinfo.com/images/products/realme-11-pro-mobile1767167888739986.png",
        color: "Black",
        size: "M",
        quantity: 1,
        price: "100",
      ),
      Cart(
        id: 1,
        productName: "Samsung Galaxy Z Flip5",
        productImage: "https://topmobileinfo.com/images/products/samsung-galaxy-z-flip5-mobile1766977788051744.png",
        color: "Gold",
        size: "L",
        quantity: 1,
        price: "100",
      ),
      Cart(
        id: 1,
        productName: "Xiaomi Redmi Note 12 4G",
        productImage: "https://topmobileinfo.com/images/products/xiaomi-redmi-note-12-4g-mobile1767058702502012.png",
        color: "Black",
        size: "M",
        quantity: 1,
        price: "100",
      )
    ];
  }
}
