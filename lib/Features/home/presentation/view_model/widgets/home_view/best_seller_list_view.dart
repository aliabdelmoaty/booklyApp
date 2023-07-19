import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwatflutter/Features/home/presentation/manager/newset%20_books/newset_books_cubit.dart';
import 'package:tharwatflutter/core/widgets/custom_error_widget.dart';

import '../../../../../../core/widgets/progress_loading.dart';
import 'best_seller_list_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
        builder: (context, state) {
      if (state is NewsetBooksSuccess) {
        return ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(0),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: BookListViewItem(bookModel:state.books[index]),
              );
            });
      } else if (state is NewsetBooksFailure) {
        return CustomErrorWidget(errMsg: state.error);
      } else {
        return Center(child: CustomProgressWidget());
      }
    });
  }
}
