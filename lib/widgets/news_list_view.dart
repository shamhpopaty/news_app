import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../models/article_model.dart';
import '../services/news_service.dart';
import 'news_title.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key, required this.category});
  final String category;

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  bool hasError = false;

  @override
  void initState() {
    super.initState();
    getNewsByCategory();
  }

  Future<void> getNewsByCategory() async {
    try {
      articles = await NewsService(Dio()).getNews(category: widget.category);
      setState(() {
        isLoading = false;
        hasError = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
        hasError = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(
      child: Center(child: CircularProgressIndicator()),
    )
        : hasError
        ? SliverToBoxAdapter(
      child: Center(child: Text("Error loading news.")),
    )
        : SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return News_Title(
            articleModel: articles[index],
          );
        },
        childCount: articles.length,
      ),
    );
  }
}
