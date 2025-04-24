import 'package:dio/dio.dart';
import 'package:task10/model/article.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<Article>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=5b8be729df1242db93c91d010485ae1d&category=$category',
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<Article> articlesList = [];
      for (var article in articles) {
        Article articleModel = Article(
          title: article['title'],
          description: article['description'],
          urlToImage: article['urlToImage'],
          url: article['url'],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    }catch (e) {
      return [];
    }
  }
}
