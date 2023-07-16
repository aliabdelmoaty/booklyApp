import 'package:flutter/material.dart';

import '../../../../../../core/constants/assets.dart';


class BestSellerListItemImage extends StatelessWidget {
  const BestSellerListItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(Assets.imagesTestImage))),
        ));
  }
}
