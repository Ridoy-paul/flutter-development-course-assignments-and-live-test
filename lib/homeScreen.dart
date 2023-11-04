import 'package:flutter/material.dart';
import 'weather_information.dart';
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String jsonString = '''
  [
    {"city": "New York", "temperature": 20, "condition": "Clear", "humidity": 60, "windSpeed": 5.5},
    {"city": "Los Angeles", "temperature": 25, "condition": "Sunny", "humidity": 50, "windSpeed": 6.8},
    {"city": "London", "temperature": 15, "condition": "Partly Cloudy", "humidity": 70, "windSpeed": 4.2},
    {"city": "Tokyo", "temperature": 28, "condition": "Rainy", "humidity": 75, "windSpeed": 8.0},
    {"city": "Sydney", "temperature": 22, "condition": "Cloudy", "humidity": 55, "windSpeed": 7.3}
  ]
  ''';

  @override
  Widget build(BuildContext context) {
    List<Weather> weatherData = (json.decode(jsonString) as List)
        .map((data) => Weather.fromJson(data))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Info App'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: weatherData.length,
        itemBuilder: (context, index) {
          Weather weather = weatherData[index];
          return Card(
            elevation: 5,
            margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 4),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              side: BorderSide(
                color: Colors.black12,
                width: 1,
              )
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              title: Text('City: ${weather.city}', style: const TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Temperature: ${weather.temperature}°C'),
                  Text('Condition: ${weather.condition}'),
                  Text('Humidity: ${weather.humidity}%'),
                  Text('Wind Speed: ${weather.windSpeed} m/s'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
