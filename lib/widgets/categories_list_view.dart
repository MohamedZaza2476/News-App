import 'package:flutter/cupertino.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

List<CategoryModel> categories = const [
  CategoryModel(image: 'assets/sports.avif', name: 'sports'),
  CategoryModel(image: 'assets/business.jpeg', name: 'business'),
  CategoryModel(image: 'assets/entertainment.jpeg', name: 'entertainment'),
  CategoryModel(image: 'assets/health.avif', name: 'health'),
  CategoryModel(image: 'assets/science.avif', name: 'science'),
  CategoryModel(image: 'assets/technology.jpeg', name: 'technology'),
  CategoryModel(image: 'assets/general.avif', name: 'general'),
];
CategoriesListView() {
  return SizedBox(
    height: 120,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) =>
          CategoryCard(categoryModel: categories[index]),
    ),
  );
}
