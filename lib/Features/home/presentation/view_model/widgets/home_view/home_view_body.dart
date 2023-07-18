import 'package:flutter/material.dart';
import 'package:tharwatflutter/Features/home/presentation/view_model/widgets/home_view/custom_appbar.dart';

import 'package:tharwatflutter/core/constants/constants.dart';
import 'package:tharwatflutter/core/constants/styles.dart';

import 'best_seller_list_view.dart';
import 'list_books_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: paddingHorizontal30,
                child: CustomAppBar(),
              ),
              BooksListView(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: paddingHorizontal30,
                child: Text(
                  'Best seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: paddingHorizontal30,
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
