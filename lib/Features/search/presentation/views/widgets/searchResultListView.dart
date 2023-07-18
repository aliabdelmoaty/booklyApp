import 'package:flutter/material.dart';

import '../../../../home/presentation/view_model/widgets/home_view/best_seller_list_item.dart';

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
          return  Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            // child: BookListViewItem(bookModel: ,),
          );
        });
  }
}