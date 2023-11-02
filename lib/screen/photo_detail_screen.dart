
import 'package:flutter/material.dart';
import '../model/photo.dart';
import '../model/error.dart';

class PhotoDetailScreen extends StatelessWidget {
  final Photo photo;

  PhotoDetailScreen({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Details'),
      ),
      body: Column(
        children: [
          Image.network(photo.url),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'ID: ${photo.id}\nTitle: ${photo.title}',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
