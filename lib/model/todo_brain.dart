class ToDo {
  String? title;
  String? description;
  DateTime? createdAt, updatedAt;

  ToDo({
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  static List<ToDo> todoList() {
    return [];
  }
}
