import 'package:flutter/material.dart';
import 'package:flutter_app/screens/weatherapp.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Page"),
      ),
      body: Container(
        child: Stack(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WeatherApp()),
                );
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
