import 'package:flutter/material.dart';
import 'package:task10/model/article.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key, required this.articleModel}) : super(key: key);

  final Article articleModel ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            articleModel.urlToImage ?? 'https://images.unsplash.com/photo-1664575602276-acd073f104c1?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YnVzaW5lc3N8ZW58MHx8MHx8fDA%3D',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 15,),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w700
          ),
        ),
        SizedBox(height: 7,),
        Text(
          articleModel.description ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
