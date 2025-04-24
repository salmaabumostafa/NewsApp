import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task10/model/article.dart';
import 'package:task10/services/news_service.dart';

import 'news_card.dart';

class NewsListView extends StatelessWidget {

  List<Article> articles = [];

  NewsListView({Key?key,required this.articles}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
      childCount: articles.length, (context , index){
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 25,),
          child: NewsCard(articleModel: articles[index],
          ),
        );
      },),
    );
  }
}
