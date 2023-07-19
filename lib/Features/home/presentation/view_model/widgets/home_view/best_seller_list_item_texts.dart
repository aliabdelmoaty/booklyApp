import 'package:flutter/material.dart';
import 'package:tharwatflutter/core/constants/assets.dart';
import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/constants/styles.dart';
import 'book_rating.dart';

class BestSellerListItemTexts extends StatelessWidget {
  const BestSellerListItemTexts({
    super.key,
    required this.titleBook,
    required this.authorsBook,
  });
  final String titleBook;
  final String authorsBook;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: Text(titleBook,
              style: Styles.textStyle20.copyWith(
                fontFamily: gtSectraFine,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
        ),
        const SizedBox(
          height: 3,
        ),
         SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: Text(
            authorsBook,
            style: Styles.textStyle14,
            maxLines: 1,
              overflow: TextOverflow.ellipsis
          ),
        ),
        const SizedBox(
          height: 3,
        ),
       
      ],
    );
  }
}
