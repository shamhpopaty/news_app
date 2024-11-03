class ArticleModel{
   final String? urlToImage;
   final String title;
   final String? description;
  ArticleModel({required this.urlToImage, required this.title, required this.description});
  factory ArticleModel.fromJson(json){
    return ArticleModel(urlToImage: json["urlToImage"], title: json['title'], description: json['description']);

  }
}