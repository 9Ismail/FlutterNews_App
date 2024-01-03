import 'package:flutter/material.dart';
import 'package:flutter_news_app/helper/data.dart';
import 'package:flutter_news_app/helper/news.dart';
import 'package:flutter_news_app/model/articlemodel.dart';
import 'package:flutter_news_app/model/categoryModel.dart';
import 'package:flutter_news_app/widgets/blog_tile.dart';

import '../widgets/categorytile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  List<CategoryModel> categories = <CategoryModel>[];
  List<ArticleModel> articles = <ArticleModel>[];
  bool _isLoading = true;

  @override
  void initState() {
    //when ever app opens or screen open for first time init state is the method which will execute first
    // TODO: implement initState

    categories = getCategories();
    getNews();
  }

  getNews() async {
    News newsClass = News();
   await newsClass.getNews();
    articles = newsClass.news;
setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
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
                padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      //Categories
                      Container(
                        height: 70,
                        child: ListView.builder(
                            itemCount: categories.length,
                            shrinkWrap: true, //use shrinkwrap whenever we used listview in coloumn
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, index) {
                              return CategoryTile(
                                imageUrl: categories[index].imageUrl,
                                categoryName: categories[index].categoryName,
                              );
                            }),
                      ),
            
                      //Blogs Articles
                      Container(
                        padding: EdgeInsets.only(top:16),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                        child: ListView.builder(
                            itemCount: articles.length,
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            itemBuilder: (ctx, index) {
                              return BlogTile(
                                  imageUrl: articles[index].urlToImage,
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

// class CategoryTile extends StatelessWidget {
//   final  imageUrl;
//   final  categoryName;
//   const CategoryTile({super.key, this.imageUrl, this.categoryName});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 16),
//       child: Stack(
//         children: [
//           ClipRRect(
//               borderRadius: BorderRadius.circular(6),
//               child: Image.network(
//                 imageUrl,
//                 width: 160,
//                 height: 80,
//                 fit: BoxFit.cover,
//               )),
//           Container(
//             alignment: Alignment.center,
//             width: 160,
//             height: 80,
//             decoration: BoxDecoration(
//                 color: Colors.black26, borderRadius: BorderRadius.circular(6)),
//             child: Text(
//               categoryName,
//               style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
