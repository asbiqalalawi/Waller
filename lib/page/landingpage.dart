import 'package:flutter/material.dart';
import 'package:waller/page/home.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF51435F),
      appBar: AppBar(
        backgroundColor: Color(0XFF51435F),
        title: Row(
          children: [
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
        elevation: 0,
      ),
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment(0, -0.2),
                child: Image.asset("assets/images/crypto-camera.png"),
              ),
              // Container(
              //   alignment: Alignment(0, 0.1),
              //   child: Image.asset("assets/images/cyw.png"),
              // ),
            ],
          ),
          Container(
            alignment: Alignment(-0.2, 0.05),
            // height: 50,
            child: Text(
              "Change",
              style: TextStyle(
                  color: Colors.white, fontFamily: "Salsa", fontSize: 24),
            ),
          ),
          Container(
            alignment: Alignment(0, 0.12),
            // height: 50,
            child: Text(
              "Your Wallpaper",
              style: TextStyle(
                  color: Colors.white, fontFamily: "Salsa", fontSize: 24),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 80),
            child: Material(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 230,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            color: Color(0XFF626262),
                            fontFamily: "Poppins",
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Image.asset("assets/images/lands.png")
        ],
      ),
    );
  }
}
