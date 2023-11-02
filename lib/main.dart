import 'package:flutter/material.dart';
import 'api_service.dart';
import 'model/error.dart';
import 'model/photo.dart';
import 'widgets/photoItem.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photo Gallery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhotoListScreen(),
    );
  }
}

class PhotoListScreen extends StatefulWidget {
  @override
  _PhotoListScreenState createState() => _PhotoListScreenState();
}

class _PhotoListScreenState extends State<PhotoListScreen> {
  late Future<List<Photo>> photos;
  final ApiService apiService = ApiService();

  @override
  void initState() {
    super.initState();
    photos = apiService.getPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Gallery App'),
      ),
      body: FutureBuilder<List<Photo>>(
        future: photos,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PhotoListView(photos: snapshot.data!);
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${(snapshot.error as AppError).message}'),
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}