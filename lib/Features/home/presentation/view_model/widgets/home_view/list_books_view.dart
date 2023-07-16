import 'package:flutter/material.dart';

import 'custom_Item_list.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0),
          child: ListViewItem(),
        ),
      ),
    );
  }
}
