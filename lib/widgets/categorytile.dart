import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens_views/category_news_screen.dart';

class CategoryTile extends StatelessWidget {
  final String imageUrl;
  final String categoryName;
  const CategoryTile({super.key, required this.imageUrl, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //tapping on image category
        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>CategoryNews(category: categoryName.toLowerCase())));
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: CachedNetworkImage(
                  imageUrl:imageUrl,
                  width: 160,
                  height: 80,
                  fit: BoxFit.cover,
                )),
            Container(
              alignment: Alignment.center,
              width: 160,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.black26, borderRadius: BorderRadius.circular(6)),
              child: Text(
                categoryName,
                style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
