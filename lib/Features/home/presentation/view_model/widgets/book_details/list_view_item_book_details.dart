import 'package:flutter/material.dart';

import 'image_list_view_book_details.dart';

class ListViewBookDetails extends StatelessWidget {
  const ListViewBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .2,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
                padding: EdgeInsets.symmetric(horizontal:4.0),
                child: ImageListViewBookDetails());
          },
        ));
  }
}
