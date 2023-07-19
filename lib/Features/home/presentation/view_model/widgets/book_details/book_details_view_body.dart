import 'package:flutter/material.dart';
import 'package:tharwatflutter/core/constants/styles.dart';
import '../../../../data/models/book_model/book_model.dart';
import '../home_view/book_rating.dart';
import '../home_view/custom_book_item_image.dart';
import 'action_book_details.dart';
import 'custom_book_details_appBar.dart';
import 'list_view_item_book_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .22),
                  child: CustomBookImage(
                    imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  bookModel.volumeInfo!.title!,
                  style: Styles.textStyle30.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 4,
                ),
                Opacity(
                  opacity: .7,
                  child: Text(
                    bookModel.volumeInfo!.authors![0],
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                  bookRating: bookModel.volumeInfo!.averageRating ?? 0,
                  count: bookModel.volumeInfo!.ratingsCount ?? 0,
                ),
                const SizedBox(
                  height: 40,
                ),
                 BooksAction(bookModel: bookModel,),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const ListViewBookDetails(

                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
