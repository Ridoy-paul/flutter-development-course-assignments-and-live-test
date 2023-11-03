
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(photo.url),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Title: ${photo.title}',
              style: const TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'ID: ${photo.id}',
              style: const TextStyle(fontSize: 18),
            ),
          ),

        ],
      ),
    );
  }
}
