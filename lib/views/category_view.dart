import 'package:flutter/material.dart';
import '../widgets/news_list_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category), // عرض اسم الفئة في شريط التطبيق
      ),
      body: CustomScrollView(
        slivers: [
          NewsListView(category: category), // تمرير اسم الفئة
        ],
      ),
    );
  }
}
