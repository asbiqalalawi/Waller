import 'package:flutter/material.dart';
import 'package:waller/widgets/widget.dart';

class Dashbboard extends StatefulWidget {
  Dashbboard({Key key}) : super(key: key);

  @override
  _DashbboardState createState() => _DashbboardState();
}

class _DashbboardState extends State<Dashbboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: brand(),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0XFFF5F8FD),
                  borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.symmetric(horizontal: 24),
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search", border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
