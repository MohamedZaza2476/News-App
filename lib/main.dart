import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/pages/home_page.dart';

void main() {
  runApp(NewsApp());
}

final dio = Dio();

void getHttp() async {
  final response = await dio.get(
    'https://newsapi.org/v2/top-headlines?q=sports&apiKey=6c1bc1d0a8b04936a404d4dea19901d2',
  );
  print(response);
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
