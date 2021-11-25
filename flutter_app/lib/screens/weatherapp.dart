import 'package:flutter/material.dart';

class WeatherApp extends StatelessWidget {
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
                Icons.menu,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
