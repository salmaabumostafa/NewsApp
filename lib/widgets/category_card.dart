import 'package:flutter/material.dart';

import '../model/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.categoryModel}) : super(key: key);

  final CategoryModel categoryModel ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16,
      ),
      child: Container(
        height: 85,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black54,
          image: DecorationImage(
            image: AssetImage(categoryModel.image),
          ),
        ),
        child: Center(
          child: Text(
            categoryModel.categoryName,
            style: TextStyle(
                color: Colors.blue[900],
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
