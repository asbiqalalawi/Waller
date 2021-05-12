import 'package:flutter/material.dart';
import 'package:waller/widgets/widget.dart';

import 'imagedetail.dart';

class AllCategories extends StatefulWidget {
  AllCategories({Key key}) : super(key: key);

  @override
  _AllCategoriesState createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: brand(),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
                alignment: Alignment.topCenter,
                child: Text(
                  "Category",
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(0XFFC0A5A5),
                      fontFamily: "Lato"),
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 24), child: Divider()),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                crossAxisCount: 1,
                childAspectRatio: 2,
                mainAxisSpacing: 6,
                children: [
                  GridTile(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ImageDetail()));
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ImageDetail()));
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
