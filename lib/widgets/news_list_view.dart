import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';

import 'news_title.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key, required this.category});
final String category;
  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles=[];
  bool isLoading=true;
  @override
  void initState()  {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async{
  articles = await NewsService(Dio()).getNews(category: widget.category);
  bool isLoading=false;
  setState(() {

  });
}
  @override
  Widget build(BuildContext context) {
return !isLoading? SliverToBoxAdapter(child: CircularProgressIndicator(),) :
      SliverList(
          delegate: SliverChildBuilderDelegate(
          childCount: articles.length,
              (context,index){
            return News_Title(
              articleModel: articles[index],
            );
          }));
  }
}


