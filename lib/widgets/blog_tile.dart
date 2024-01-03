import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens_views/article_view_screen.dart';

class BlogTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String url;
   BlogTile({required this.imageUrl,required this.title,required this.description,required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>ArticleView(blogUrl:url)));
        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>ArticleView(blogUrl:url)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(imageUrl,fit: BoxFit.cover,)
              ),
    
              SizedBox(height: 10,),
    
             Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18)),
    
            SizedBox(height: 8,),
    
            Text(description,style: TextStyle(color: Colors.white60),)
          ],
        ),
      ),
    );
  }
}