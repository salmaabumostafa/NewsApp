import 'package:flutter/material.dart';

import '../model/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {

  final List<CategoryModel> categories = [
    CategoryModel(name: 'Business', imageAsset: 'assets/img.jpg', apiQuery: 'business'),
    CategoryModel(name: 'Technology', imageAsset: 'assets/img.jpg', apiQuery: 'technology'),
    CategoryModel(name: 'entertainment', imageAsset: 'assets/img.jpg', apiQuery: 'entertainment'),
    CategoryModel(name: 'general', imageAsset: 'assets/img.jpg', apiQuery: 'general'),
    CategoryModel(name: 'health', imageAsset: 'assets/img.jpg', apiQuery: 'health'),
    CategoryModel(name: 'science', imageAsset: 'assets/img.jpg', apiQuery: 'science'),
    CategoryModel(name: 'sports', imageAsset: 'assets/img.jpg', apiQuery: 'sports'),

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
