import 'package:flutter/material.dart';
import 'package:waller/page/imagedetail.dart';
import 'package:waller/page/search.dart';
import 'package:waller/widgets/widget.dart';

import 'categories.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: brand(),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
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
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Search()));
                        },
                        child: Icon(Icons.search)),
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
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "View All",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 16,
              ),
              Container(
                  height: 80,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoriesTile(
                        imgurl: "assets/images/andre-benz.jpg",
                        title: "Asbiq",
                      ),
                      CategoriesTile(
                        imgurl: "assets/images/harley-davidson.jpg",
                        title: "Asbiq",
                      ),
                      CategoriesTile(
                        imgurl: "assets/images/harley-davidson.jpg",
                        title: "Asbiq",
                      ),
                      CategoriesTile(
                        imgurl: "assets/images/harley-davidson.jpg",
                        title: "Asbiq",
                      ),
                      CategoriesTile(
                        imgurl: "assets/images/harley-davidson.jpg",
                        title: "Asbiq",
                      ),
                      CategoriesTile(
                        imgurl: "assets/images/harley-davidson.jpg",
                        title: "Asbiq",
                      ),
                    ],
                  )),
              wallpaperList(context)
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesTile extends StatelessWidget {
  final String imgurl, title;
  CategoriesTile({this.imgurl, this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Categories()));
      },
      child: Container(
        margin: EdgeInsets.only(right: 4),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imgurl,
                height: 50,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 50,
              width: 100,
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
