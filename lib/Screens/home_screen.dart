import 'package:flutter/material.dart';
import 'package:task10/widgets/news_list_view_builder.dart';
import '../widgets/category_list_view.dart';
import '../widgets/news_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
                child: CategoryListView(),
            ),
            SliverToBoxAdapter(
                child: SizedBox(height: 25,),
            ),
            NewsListViewBuilder(category: 'general',),
          ],
        ),

        // child: Column(
        //   children: [
        //     CategoryListView(),
        //     SizedBox(height: 25,),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}
