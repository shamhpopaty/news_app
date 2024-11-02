import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/home_view.dart';

void main(){
  //getNews();
  runApp(News_App());
}

// final dio = Dio();
// void getNews()async{
//   final response= await dio.get("http://dart.dev");
//   print(response);
// }

class News_App extends StatelessWidget {
  const News_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_View(),
    );
  }
}
