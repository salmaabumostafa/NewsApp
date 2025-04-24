import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task10/widgets/news_list_view_builder.dart';

import '../model/category_model.dart';
import '../widgets/category_list_view.dart';

class CategoryScreen extends StatelessWidget {

  final String category ;

  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News Categories')),
      body: CustomScrollView(
        slivers:[
          NewsListViewBuilder(category: category,),
        ]
      ),
    );
  }
}