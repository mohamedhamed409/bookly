import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/best_seller_listview.dart';
import 'package:bookly/features/search/presentation/view/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.0),
      child: CustomScrollView(slivers: [
         SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchTextField(),
              SizedBox(
                height: 16,
              ),
              Text(
                'Search Results',
                style: Styles.textStyle18,
              ),
              //   Expanded(child: SearchResultListView(),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        SearchResultListView(),
      ]),
    );
  }
}
