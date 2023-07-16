import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tharwatflutter/core/constants/app_router.dart';
import 'best_seller_list_item_image.dart';
import 'best_seller_list_item_texts.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: const SizedBox(
        height: 130,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BestSellerListItemImage(),
            SizedBox(
              width: 30,
            ),
            Expanded(child: BestSellerListItemTexts())
          ],
        ),
      ),
    );
  }
}
