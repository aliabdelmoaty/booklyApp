import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tharwatflutter/Features/home/data/models/book_model/book_model.dart';
import 'package:tharwatflutter/core/constants/app_router.dart';
import '../../../../../../core/constants/styles.dart';
import 'book_rating.dart';
import 'custom_book_item_image.dart';
import 'best_seller_list_item_texts.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomBookImage(
              imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BestSellerListItemTexts(
                    authorsBook: bookModel.volumeInfo!.authors!.first??"The author was not found.",
                    titleBook: bookModel.volumeInfo!.title!,
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating(
                        bookRating: bookModel.volumeInfo!.averageRating ?? 0 ,
                        //
                        count: bookModel.volumeInfo!.ratingsCount ?? 0,
                        // 
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
