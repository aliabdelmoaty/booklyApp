// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .28,
        child: AspectRatio(
            aspectRatio: 2.8 / 4,
            child: CachedNetworkImage(
              placeholder: (context, url) => const Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    Assets.imagesLoading,
                  )),
              imageUrl: imageUrl,
              errorWidget: (context, url, error) => const Image(
                  fit: BoxFit.fill, image: AssetImage(Assets.imagesLoading)),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
