import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF51435F),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          backgroundColor: Color(0XFF51435F),
          title: Text("Waller"),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 10,
              child: Text("Change Your Wallpaper",
                  style: TextStyle(color: Colors.white)))
        ],
      ),
    );
  }
}
