import 'package:dio/dio.dart';

class NewsService {
  final dio = Dio();

  void getGeneralData() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=5b8be729df1242db93c91d010485ae1d5b8be729df1242db93c91d010485ae1d=us'
      );
    }
  void getSportData() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=5b8be729df1242db93c91d010485ae1d=us&category=sport'
    );
  }
}