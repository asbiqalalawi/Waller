import 'package:waller/model/categories_model.dart';

String apiKey = "563492ad6f917000010000017a69bec3ee4d4a4f9f6c65477f45d928";

List<CategoriesModel> getCategories() {
  List<CategoriesModel> categories = new List();
  CategoriesModel categoriesModel = new CategoriesModel();
//
  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200";
  categoriesModel.categoriesName = "Nature";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();
//
  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/145939/pexels-photo-145939.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200";
  categoriesModel.categoriesName = "Animal";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();
//
  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/2129796/pexels-photo-2129796.png?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200";
  categoriesModel.categoriesName = "City";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();
//
  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/3156482/pexels-photo-3156482.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200";
  categoriesModel.categoriesName = "Cars";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();
//
  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/110854/pexels-photo-110854.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200";
  categoriesModel.categoriesName = "Space";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();
//
  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/2693208/pexels-photo-2693208.png?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200";
  categoriesModel.categoriesName = "Abstract";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  return categories;
}
