import 'package:flutter/material.dart';
import 'package:waller/page/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Waller",
      theme: ThemeData(primaryColor: Colors.white),
      home: Home(),
    );
  }
}
