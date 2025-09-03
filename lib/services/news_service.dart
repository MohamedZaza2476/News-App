import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      var response = await dio.get(
        "https://newsapi.org/v2/top-headlines?apiKey=6c1bc1d0a8b04936a404d4dea19901d2&country=us&category=$category",
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } on Exception catch (e) {
      return [];
    }
  }
}
