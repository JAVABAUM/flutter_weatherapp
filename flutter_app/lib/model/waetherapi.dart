import 'package:flutter/material.dart';
import 'package:flutter_app/screens/weatherapp.dart';
import 'package:flutter_app/main.dart';
import 'package:http/http.dart' as http;

Future<http.Response> fetchWeather() {
  return http.get(Uri.parse(''));
}
