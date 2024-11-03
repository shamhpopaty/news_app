import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    // تمرير اسم الفئة (category) كجزء من رابط الطلب لجلب الأخبار حسب الفئة
    var response = await dio.get(
      "https://newsapi.org/v2/top-headlines?category=$category&apiKey=4e37e6ff010541df8a2682308afbc0d2",
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articlemodel = ArticleModel.fromJson(article);
      articlesList.add(articlemodel);
    }
    return articlesList;
  }
}
