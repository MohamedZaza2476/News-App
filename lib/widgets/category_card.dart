import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/pages/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: categoryModel.name,);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Center(
            child: Text(
              '${categoryModel.name}',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          width: 200,
          height: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('${categoryModel.image}'),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
