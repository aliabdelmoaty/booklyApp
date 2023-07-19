import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwatflutter/Features/search/presentation/manager/cubit/search_cubit.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/progress_loading.dart';
import '../../../../home/presentation/view_model/widgets/home_view/best_seller_list_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(5),
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: BookListViewItem(bookModel:state.books[index] ,),
                );
              });
        } else if (state is SearchBooksFailure) {
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
