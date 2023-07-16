import 'package:flutter/material.dart';

import 'best_seller_list_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(0),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 30,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: BestSellerListItem(),
          );
        });
  }
}
