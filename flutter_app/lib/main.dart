import 'package:flutter/material.dart';
import 'package:flutter_app/screens/weatherapp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:WeatherApp(),/*  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: const Text('cool weather app'),
        ),
      ), */
    );
  }
}
