import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../models/category_model.dart';
import '../widgets/categories_listview.dart';
import '../widgets/category_card.dart';
import '../widgets/news_list_view.dart';
import '../widgets/news_title.dart';

const List<CategoryModel> categoris= [
  CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: "technology"),
  CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: "sports"),
  CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: "science"),
  CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: "business"),
  CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: "general"),
  CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: "general"),
  CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: "general"),
  CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: "general"),
  CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: "general"),
  CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: "general"),
  CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: "general"),
  CategoryModel(Image: "assets/technology.jpeg", Text: "Technology", categoryName: "general"),
];
class Home_View extends StatelessWidget {
  const Home_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top:150),
          child: ListTile(
            leading: Icon(Icons.newspaper),
            title: Text("The Last News"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Scaffold(
                    body: CustomScrollView(
                      slivers: [
                      NewsListView(category: "general",),
                      ],
                    )
                );
              }));
            },
          ),
        ),
      ),
   appBar:  AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News",style: TextStyle(
              color: Colors.black,
            ),),
            Text("Cloud",style: TextStyle(
              color: Colors.orange,
            ),),
          ],
        ),
      ),
      body: Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: CustomScrollView(
    slivers: [
    SliverToBoxAdapter(
    child: CategoriesListview(),
    ),
    SliverToBoxAdapter(
    child: SizedBox(height: 35),  // إضافة مسافة بين الفئات والمحتوى التالي
    ),

      NewsListView(category: "general",),


    // يمكنك هنا إضافة قائمة الأخبار أو أي محتوى آخر
    ],
      ),
      ),


    );
  }
}


// CustomScrollView(
// slivers: [
// SliverToBoxAdapter(child: CategoriesListview()),
// SliverToBoxAdapter(child: SizedBox(height: 35,)),
// NewsListView(),
// ],
// )