import 'package:flutter/material.dart';
import 'package:waller/page/imagedetail.dart';

Widget brand() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "W",
        style: TextStyle(color: Color(0XFF51435F), fontFamily: "Salsa", fontSize: 24),
      ),
      Text(
        "aller",
        style: TextStyle(color: Color(0XFF686BB4), fontFamily: "Salsa", fontSize: 24),
      )
    ],
  );
}

Widget wallpaperList(context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6,
      crossAxisSpacing: 6,
      children: [
        GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ImageDetail()));
            },
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/images/orkhan.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        GridTile(
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/orkhan.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GridTile(
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/orkhan.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GridTile(
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/orkhan.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GridTile(
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/orkhan.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GridTile(
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/orkhan.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GridTile(
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/orkhan.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GridTile(
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/orkhan.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GridTile(
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/orkhan.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GridTile(
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/orkhan.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
