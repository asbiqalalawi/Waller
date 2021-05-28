import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:waller/data/data.dart';
import 'package:waller/model/categories_model.dart';
import 'package:waller/model/wallpaper_model.dart';
import 'package:waller/page/allcategories.dart';
import 'package:waller/page/search.dart';
import 'package:waller/widgets/widget.dart';
import 'package:http/http.dart' as http;

import 'categories.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<WallpaperModel> wallpapers = new List();
  List<CategoriesModel> categories = new List();

  getTrendingWallpapers() async {
    var response = await http.get(
        Uri.parse("https://api.pexels.com/v1/curated?per_page=16"),
        headers: {"Authorization": apiKey});

    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["photos"].forEach((element) {
      WallpaperModel wallpaperModel = new WallpaperModel();
      wallpaperModel = WallpaperModel.fromMap(element);
      wallpapers.add(wallpaperModel);
    });

    setState(() {});
  }

  @override
  void initState() {
    categories = getCategories();
    getTrendingWallpapers();
    super.initState();
  }

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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllCategories()));
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: "Poppins"),
                    ),
                  )),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 80,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategoriesTile(
                        title: categories[index].categoriesName,
                        imgUrl: categories[index].imgUrl,
                      );
                    }),
              ),
              // Container(
              //     height: 80,
              //     child: ListView(
              //       padding: EdgeInsets.symmetric(horizontal: 24),
              //       scrollDirection: Axis.horizontal,
              //       children: [
              //         CategoriesTile(
              //           imgurl: "assets/images/andre-benz.jpg",
              //           title: "Category",
              //         ),
              //         CategoriesTile(
              //           imgurl: "assets/images/harley-davidson.jpg",
              //           title: "Category",
              //         ),
              //         CategoriesTile(
              //           imgurl: "assets/images/nasa.jpg",
              //           title: "Category",
              //         ),
              //         CategoriesTile(
              //           imgurl: "assets/images/orkhan.jpg",
              //           title: "Category",
              //         ),
              //       ],
              //     )),
              wallpaperList(wallpapers: wallpapers, context: context),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesTile extends StatelessWidget {
  final String imgUrl, title;
  CategoriesTile({@required this.title, @required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: <Widget>[
      ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            imgUrl,
            height: 50,
            width: 100,
            fit: BoxFit.cover,
          )),
      Container(
        margin: EdgeInsets.only(right: 4),
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
              fontWeight: FontWeight.bold,
              fontSize: 15,
              fontFamily: "Poppins"),
        ),
      ),
    ]));
  }
}
