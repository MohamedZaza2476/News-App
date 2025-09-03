class ArticleModel {
  final String? image;
  final String? title;
  final String? subtitle;
  final String? url;
  const ArticleModel({this.url, required this.image, required this.title, required this.subtitle});

  factory ArticleModel.fromJson(json){
    return ArticleModel(
          url: json['url'],
          image: json['urlToImage'],
          title: json['title'],
          subtitle: json['description'],
        );
  }
}
