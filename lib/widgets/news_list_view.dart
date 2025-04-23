import 'package:flutter/material.dart';

import 'news_card.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context , index){
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 25,
          ),
          child: NewsCard(),
        );
      },
    );
  }
}
