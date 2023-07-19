import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwatflutter/Features/home/presentation/manager/featured_books/feature_books_cubit.dart';

import '../../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../../core/widgets/progress_loading.dart';
import 'custom_Item_list.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) =>  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: ListViewItemImage(
                    imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail??'https://i.quotev.com/lzpyzwtj6qsa.jpg',
                  ),
                ),
              ),
            ),
          );
        } else if (state is FeatureBooksFailure) {
          return CustomErrorWidget(
            errMsg: state.error,
          );
        } else {
          return Center(child: CustomProgressWidget());
        }
      },
    );
  }
}
