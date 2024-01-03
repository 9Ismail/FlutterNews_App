import 'dart:convert';

import '../model/articlemodel.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=56714628c5a14596999417e66d26b50c';

    final response = await http.get(Uri.parse(url));

    final jsonExtractedData = json.decode(response.body);

    if (jsonExtractedData['status'] == 'ok') {
      jsonExtractedData['articles'].forEach((element) {
         if (element['urlToImage']!=null && element['description'] != null) {
          ArticleModel articleModel =  ArticleModel(
              author: element['author'] ??"",
              title: element['title'] ??"",
              description: element['description'] ??"",
              url: element['url'] ??"",
              urlToImage: element['urlToImage'] ??"",
            
              content: element['content']);

          news.add(articleModel);
        }
      });
    }
  }
}

class CategoryNewsClass {
  List<ArticleModel> news = [];

  Future<void> getNews(String category) async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=56714628c5a14596999417e66d26b50c';

    final response = await http.get(Uri.parse(url));

    final jsonExtractedData = json.decode(response.body);

    if (jsonExtractedData['status'] == 'ok') {
      jsonExtractedData['articles'].forEach((element) {
         if (element['urlToImage']!=null && element['description'] != null) {
          ArticleModel articleModel =  ArticleModel(
              author: element['author'] ??"",
              title: element['title'] ??"",
              description: element['description'] ??"",
              url: element['url'] ??"",
              urlToImage: element['urlToImage'] ??"",
            
              content: element['content'] ??"");

          news.add(articleModel);
        }
      });
    }
  }
}
