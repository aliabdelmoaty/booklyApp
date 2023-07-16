// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../../core/constants/assets.dart';


class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.blue,
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(Assets.imagesTestImage))),
      ),
    );
  }
}
