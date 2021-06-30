import 'package:flutter/material.dart';
import 'package:waller/data/data.dart';
import 'package:waller/model/categories_model.dart';
import 'package:waller/widgets/widget.dart';

import 'categories.dart';

class AllCategories extends StatefulWidget {
  AllCategories({Key key}) : super(key: key);

  @override
  _AllCategoriesState createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  List<CategoriesModel> categories = new List();

  @override
  void initState() {
    categories = getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
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
                height: MediaQuery.of(context).size.height - 140,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return AllCategoriesTile(
                        title: categories[index].categoriesName,
                        imgUrl: categories[index].imgUrl,
                      );
                    })),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}

class AllCategoriesTile extends StatelessWidget {
  final String imgUrl, title;
  AllCategoriesTile({@required this.imgUrl, @required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Categories(
                      categoriesName: title.toLowerCase(),
                    )));
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              imgUrl,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(16),
            ),
            width: MediaQuery.of(context).size.width,
            height: 200,
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: "Poppins"),
            ),
          ),
        ],
      ),
    );
  }
}
