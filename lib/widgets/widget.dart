import 'package:flutter/material.dart';
import 'package:waller/model/wallpaper_model.dart';
import 'package:waller/page/imagedetail.dart';

Widget brand() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "W",
        style: TextStyle(
            color: Color(0XFF51435F), fontFamily: "Salsa", fontSize: 24),
      ),
      Text(
        "aller",
        style: TextStyle(
            color: Color(0XFF686BB4), fontFamily: "Salsa", fontSize: 24),
      )
    ],
  );
}

Widget wallpaperList({List<WallpaperModel> wallpapers, context}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6,
      crossAxisSpacing: 6,
      children: wallpapers.map((wallpaper) {
        return GridTile(
            child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImageDetail(
                          imgUrl: wallpaper.src.portrait,
                        )));
          },
          child: Hero(
            tag: wallpaper.src.portrait,
            child: Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    wallpaper.src.portrait,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ));
      }).toList(),
    ),
  );
}
