import 'package:flutter/material.dart';
import '../model/photo.dart';
import '../screen/photo_detail_screen.dart';

class PhotoListView extends StatelessWidget {
  final List<Photo> photos;

  PhotoListView({required this.photos});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 1),
          child: ListTile(
            leading: Image.network(photos[index].thumbnailUrl),
            title: Text(photos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhotoDetailScreen(photo: photos[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }
}