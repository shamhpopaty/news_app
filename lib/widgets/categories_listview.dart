import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'category_card.dart';

class CategoriesListview extends StatelessWidget {
  const CategoriesListview({super.key});

  final List<CategoryModel> categoris = const [
    CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: 'business'),
    CategoryModel(Image: "assets/technology.jpeg", Text: "Sports", categoryName: 'business'),
    CategoryModel(Image: "assets/technology.jpeg", Text: "Science", categoryName: 'business'),
    CategoryModel(Image: "assets/technology.jpeg", Text: "Business", categoryName: 'business'),
    CategoryModel(Image: "assets/technology.jpeg", Text: "General", categoryName: 'business'),
    CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: 'business'),
    CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: 'business'),
    CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: 'business'),
    CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: 'business'),
    CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: 'business'),
    CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: 'business'),
    CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: 'business'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,  // تحديد ارتفاع مناسب للقائمة
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoris.length,
        itemBuilder: (context, index) {
          return Category_Card(category: categoris[index]);
        },
      ),
    );
  }
}

