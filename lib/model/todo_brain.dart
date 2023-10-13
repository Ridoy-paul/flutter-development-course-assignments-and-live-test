class TODO {
  String? title;
  String? description;
  DateTime? createdAt, updatedAt;

  TODO({
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  static List<TODO> todoList() {
    return [];
  }
}
