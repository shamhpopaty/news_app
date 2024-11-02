import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import '../views/category_view.dart';

class Category_Card extends StatelessWidget {
   Category_Card({super.key, required this.category});

final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryView(category: category.categoryName,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(category.Image),
            fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Text(category.Text,
            style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
