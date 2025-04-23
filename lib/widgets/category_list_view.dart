import 'package:flutter/material.dart';

import '../model/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({Key? key}) : super(key: key);

  final List<CategoryModel> categories = const [
    CategoryModel(
        image: 'assets/img.jpg',
        categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'assets/img.jpg',
      categoryName: 'General',
    ),
    CategoryModel(
      image: 'assets/img.jpg',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/img.jpg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/img.jpg',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/img.jpg',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/img.jpg',
      categoryName: 'E-Commerce',
    ),
    CategoryModel(
      image: 'assets/img.jpg',
      categoryName: 'E-Learning',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            categoryModel: categories[index],
          );
        },
      ),
    );
  }
}
