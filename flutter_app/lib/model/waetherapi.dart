import 'package:flutter/material.dart';
import 'package:flutter_app/screens/weatherapp.dart';
import 'package:flutter_app/main.dart';
import 'package:http/http.dart' as http;

Future<http.Response> fetchAlbum() {
  return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
}
