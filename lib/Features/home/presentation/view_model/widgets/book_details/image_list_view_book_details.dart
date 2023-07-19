import 'package:flutter/material.dart';
class ImageListViewBookDetails extends StatelessWidget {
  const ImageListViewBookDetails({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            image:  DecorationImage(
                fit: BoxFit.fill, image:NetworkImage(imageUrl))),
      ),
    );
  }
}
