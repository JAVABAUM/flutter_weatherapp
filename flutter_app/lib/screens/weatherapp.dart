import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_app/screens/about.dart';

class WeatherApp extends StatefulWidget {
  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  Weather? currentWeather;

  @override
  void initState() => {
        super.initState(),
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Weather App'),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: IconButton(
              icon: const Icon(
                Icons.info,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {
                MaterialPageRoute materialPageRoute = new MaterialPageRoute(
                  builder: (context) => about(),
                );
                Navigator.of(context).push(materialPageRoute);
              },
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/rain.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.black54),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: const [
                  SizedBox(
                    height: 150,
                  ),
                  Text(
                    '25°C',
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'San Francisco',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '08:56 - Friday, 25 Nov 2021',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 370),
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Wind: 20km/h',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Rain: 0.5mm',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Humidity: 50%',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> getWeather() async {
    final response = await http.get(Uri.parse(
        'http://api.weatherapi.com/v1/forecast.json?key=e0271b19e612477b8fa84526211811&q=Rudolfstetten'));
    if (response.statusCode == 200) {
      var allJson = json.decode(response.body);
      var location = json.decode(allJson['location']);
      print(location);
      // ignore: avoid_print
      return allJson;
    } else {
      return "";
    }
  }
}

class Weather {
  String name;
  String country;
  DateTime localtime;
  double tempC;

  Weather(
      {required this.name,
      required this.country,
      required this.localtime,
      required this.tempC});

  factory Weather.fromJson(Map json) {
    return Weather(
      name: json["name"] as String,
      country: json["country"] as String,
      localtime: json["localtime"] as DateTime,
      tempC: json["tempC"] as double,
    );
  }

  String get weatherName => name;
  String get weatherCountry => country;
  DateTime get weatherTime => localtime;
  double get weatherTemperature => tempC;
}

/* 
Future<List<Weather>> read(String fileName) async {
  final String content = await rootBundle.loadString(fileName);
  return parse(content);
}

List<Weather> parse(String s) {
  List res = json.decode(s);
  return res.map(parseWeather).toList();
}



Weather parseWeather(properties) {
  String name = properties["name"];
  String country = properties["country"];
  DateTime localtime = properties["localtime"];
  double tempC = properties["temp_c"];

  return Weather(name, country, localtime, tempC);
}

*/