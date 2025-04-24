import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task10/services/news_service.dart';

import 'Screens/home_screen.dart';

void main() {
  //NewsService(Dio()).getNews();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
