import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/article.dart';
import '../services/news_service.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category ;

  const NewsListViewBuilder({super.key, required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<Article> articles = [];

  // bool isLoading = true ;
  var future;
  @override
  void initState() {

    super.initState();
    future=NewsService(Dio()).getNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
      future: future,
      builder: (context ,snapshot){
        if(snapshot.hasData){
          return NewsListView(articles: snapshot.data!);
        }else if(snapshot.hasError){
          return SliverToBoxAdapter(child: Text('Oops'));
        }else{
          return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())) ;
        }

      },
    );
    // return isLoading ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty ? NewsListView(articles: articles,)
    //     :SliverToBoxAdapter(child: Text('Oops'));
  }
}
