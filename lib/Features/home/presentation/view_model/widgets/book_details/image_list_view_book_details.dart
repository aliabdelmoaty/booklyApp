import 'package:flutter/material.dart';

import '../../../../../../core/constants/assets.dart';

class ImageListViewBookDetails extends StatelessWidget {
  const ImageListViewBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                image: AssetImage(Assets.imagesTestImage))),
      ),
    );
  }
}
