import 'package:flutter/material.dart';
import 'package:tharwatflutter/core/constants/styles.dart';

import '../../../../home/presentation/view_model/widgets/home_view/best_seller_list_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchText(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(5),
        physics: const BouncingScrollPhysics(),
        itemCount: 30,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: BookListViewItem(),
          );
        });
  }
}
