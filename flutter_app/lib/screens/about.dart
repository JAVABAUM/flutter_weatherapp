import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

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
            const SizedBox(height: 10),
            const Text(
              'Contributors:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(
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
                const SizedBox(width: 63),
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
                const SizedBox(width: 53),
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
                const SizedBox(width: 4),
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
