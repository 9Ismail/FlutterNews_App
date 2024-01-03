import 'package:flutter/material.dart';
import 'package:flutter_news_app/helper/news.dart';
import 'package:flutter_news_app/model/articlemodel.dart';

import '../widgets/blog_tile.dart';

class CategoryNews extends StatefulWidget {
  final String category;
   CategoryNews({required this.category});

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ArticleModel> articles =<ArticleModel> [];
  bool _isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoryNews();
  }

  getCategoryNews() async {
    CategoryNewsClass newsClass = CategoryNewsClass();
    await newsClass.getNews(widget.category);
    articles = newsClass.news;
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black26,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Indian',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              'News',
              style: TextStyle(
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
      body: _isLoading
          ? Center(
              child: Container(
                  child: CircularProgressIndicator(
                color: Colors.white,
              )),
            )
          : SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    //Blogs Articles
                    Container(
                      padding: EdgeInsets.only(top: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16)),
                      child: ListView.builder(
                          itemCount: articles.length,
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (ctx, index) {
                            return BlogTile(
                              imageUrl: articles[index].urlToImage ,
                              title: articles[index].title,
                              description: articles[index].description,
                              url: articles[index].url,
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
