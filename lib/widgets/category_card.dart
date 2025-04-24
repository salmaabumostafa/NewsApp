import 'package:flutter/material.dart';
import 'package:task10/Screens/category_screen.dart';

import '../model/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.categoryModel}) : super(key: key);

  final CategoryModel categoryModel ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context,).push(MaterialPageRoute(builder: (context)=>CategoryScreen(category: categoryModel.name,)));
      },
      child: Padding(
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
              image: AssetImage(categoryModel.imageAsset),
            ),
          ),
          child: Center(
            child: Text(
              categoryModel.name,
              style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
