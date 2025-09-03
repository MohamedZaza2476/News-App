import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_card.dart';
class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsListView({super.key , required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return NewsCard(articleModel: articles[index]);
      }),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   physics: NeverScrollableScrollPhysics(),
    //   itemCount: 10,
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.only(bottom: 20),
    //       child: NewsCard(
    //         newsModels: NewsModels(
    //           description:
    //               'Liverpool forward Mohamed Salah has called out UEFA for not saying how a footballer known as the "Palestinian Pele" died in its tribute to him.',
    //           head:
    //               "Mohamed Salah challenges UEFA response to Palestinian footballer's death in Gaza",
    //           image:
    //               'https://a.espncdn.com/photo/2025/0809/r1529514_1296x518_5-2.jpg',
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}
