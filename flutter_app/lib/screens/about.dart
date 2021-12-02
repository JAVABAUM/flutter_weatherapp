import 'package:flutter/material.dart';
import 'package:flutter_app/screens/weatherapp.dart';
import 'package:url_launcher/url_launcher.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Page"),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WeatherApp()),
              );
            },
            child: const Text("Go Back"),
          ),
          Row(
            children: <Widget>[
              const Text(
                'This is me',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 50),
              FlatButton(
                onPressed: () {
                  _launchURL();
                },
                minWidth: 20,
                child: Image.asset(
                  'assets/images/instagram.png',
                  height: 20,
                  width: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://instagram.com/d9geri';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
