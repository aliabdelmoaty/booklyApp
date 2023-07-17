import 'package:flutter/material.dart';
import 'package:tharwatflutter/core/constants/assets.dart';

import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/constants/styles.dart';
import 'book_rating.dart';


class BestSellerListItemTexts extends StatelessWidget {
  const BestSellerListItemTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: Text('Harry Potter and the Goblet of Fire',
              style: Styles.textStyle20.copyWith(
                fontFamily: Assets.kGtSectraFine,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
        ),
        const SizedBox(
          height: 3,
        ),
        const Text(
          'J.K.Rowling',
          style: Styles.textStyle14,
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          children: [
            Text(
              '19.19 €',
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const BookRating()
          ],
        )
      ],
    );
  }
}
