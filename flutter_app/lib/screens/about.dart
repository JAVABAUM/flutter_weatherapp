import 'package:flutter/material.dart';
import 'package:flutter_app/screens/weatherapp.dart';
import 'package:url_launcher/url_launcher.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Contributors"),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
            backgroundColor: Colors.black87,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            content: Container(
              height: 144.0,
              width: 50.0,
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        "Gergö",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      FlatButton(
                        color: Colors.black87,
                        minWidth: 20,
                        onPressed: () {
                          _gergelyLink();
                        },
                        child: Image.asset(
                          'assets/images/instagram.png',
                          height: 20,
                          width: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Florian",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      FlatButton(
                        color: Colors.black87,
                        minWidth: 20,
                        onPressed: () {
                          _florianLink();
                        },
                        child: Image.asset(
                          'assets/images/instagram.png',
                          height: 20,
                          width: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Alessandro",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      FlatButton(
                        color: Colors.black87,
                        minWidth: 20,
                        onPressed: () {
                          _aleLink();
                        },
                        child: Image.asset(
                          'assets/images/instagram.png',
                          height: 20,
                          width: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Page"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            const Text(
              'Contributors:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            FlatButton(
              onPressed: () {
                createAlertDialog(context);
              },
              child: Text("Test"),
              textColor: Colors.white,
            ),

            /* ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WeatherApp()),
                );
              },
              child: const Text("Go Back"),
            ), */

            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Gergö',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 50),
                FlatButton(
                  minWidth: 20,
                  onPressed: () {
                    _gergelyLink();
                  },
                  child: Image.asset(
                    'assets/images/instagram.png',
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Florian',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 43),
                FlatButton(
                  minWidth: 20,
                  onPressed: () {
                    _florianLink();
                  },
                  child: Image.asset(
                    'assets/images/instagram.png',
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Alessandro',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 4),
                FlatButton(
                  minWidth: 20,
                  onPressed: () {
                    _aleLink();
                  },
                  child: Image.asset(
                    'assets/images/instagram.png',
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

_gergelyLink() async {
  const url = 'https://instagram.com/d9geri';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_florianLink() async {
  const url = 'https://www.instagram.com/flo_mit_h_official/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_aleLink() async {
  const url = 'https://instagram.com/FlyLikeAle';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
