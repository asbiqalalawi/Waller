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
      Navigator.push(
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
              color: Colors.red[500],
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "W",
              style: TextStyle(
                  color: Color(0XFFD2A5FF), fontFamily: "Salsa", fontSize: 30),
            ),
            Text(
              "aller",
              style: TextStyle(
                  color: Colors.white, fontFamily: "Salsa", fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
