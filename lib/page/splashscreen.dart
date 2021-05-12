import 'package:flutter/material.dart';
import 'dart:async';

import 'landingpage.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LandingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.wallpaper_rounded,
              size: 100.0,
              color: Color(0XFF51435F),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "W",
                  style: TextStyle(
                      color: Color(0XFF51435F),
                      fontFamily: "Salsa",
                      fontSize: 30),
                ),
                Text(
                  "aller",
                  style: TextStyle(
                      color: Color(0XFF686BB4),
                      fontFamily: "Salsa",
                      fontSize: 30),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
