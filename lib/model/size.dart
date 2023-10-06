class Size {
  int? id;
  String? sizeTitle;
  int? isActive;

  Size({
    this.id,
    this.sizeTitle,
    this.isActive,
  });

  static List<Size> sizeList() {
    return [
      Size(id: 1, sizeTitle: "S", isActive: 1),
      Size(id: 2, sizeTitle: "M", isActive: 0),
      Size(id: 3, sizeTitle: "L", isActive: 0),
      Size(id: 4, sizeTitle: "XL", isActive: 0),
      Size(id: 5, sizeTitle: "XXL", isActive: 0),
      Size(id: 6, sizeTitle: "XXXL", isActive: 0),
    ];
  }
}
