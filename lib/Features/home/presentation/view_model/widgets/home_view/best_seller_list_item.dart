import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tharwatflutter/core/constants/app_router.dart';
import 'custom_book_item.dart';
import 'best_seller_list_item_texts.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

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
            CustomBookImage(),
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
