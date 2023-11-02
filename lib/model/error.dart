class AppError {
  final String message;

  AppError({required this.message});

  factory AppError.fromJson(Map<String, dynamic> json) {
    return AppError(
      message: json['message'],
    );
  }
}
