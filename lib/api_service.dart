import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model/error.dart';
import 'model/photo.dart';

class ApiService {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/photos';

  Future<List<Photo>> getPhotos() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      return list.map((model) => Photo.fromJson(model)).toList();
    } else {
      throw AppError.fromJson(json.decode(response.body));
    }
  }
}
