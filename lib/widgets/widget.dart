import 'package:flutter/material.dart';

Widget brand() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "W",
        style: TextStyle(color: Color(0XFF51435F)),
      ),
      Text(
        "aller",
        style: TextStyle(color: Color(0XFF686BB4)),
      )
    ],
  );
}

Widget wallpaperList() {
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
