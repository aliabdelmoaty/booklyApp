import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwatflutter/Features/home/data/models/book_model/book_model.dart';
import 'package:tharwatflutter/Features/home/presentation/manager/fetchSimilarBooks/fetch_similar_books_cubit.dart';
import 'package:tharwatflutter/core/widgets/custom_error_widget.dart';

import '../../../../../../core/constants/assets.dart';
import '../../../../../../core/widgets/progress_loading.dart';
import 'image_list_view_book_details.dart';

class ListViewBookDetails extends StatelessWidget {
  const ListViewBookDetails({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSimilarBooksCubit, FetchSimilarBooksState>(
      builder: (context, state) {
        // var book = bookModel;
        if (state is FetchSimilarBooksSuccess) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: AspectRatio(
                          aspectRatio: 2.8 / 4,
                          child: CachedNetworkImage(
                            placeholder: (context, url) => const Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  Assets.imagesLoading,
                                )),
                            imageUrl: state
                                .books[index].volumeInfo!.imageLinks!.thumbnail!,
                            errorWidget: (context, url, error) => const Image(
                                fit: BoxFit.fill,
                                image: AssetImage(Assets.imagesLoading)),
                            fit: BoxFit.fill,
                          )),
                    ),
                  );
                },
              ));
        } else if (state is FetchSimilarBooksFailure) {
          return CustomErrorWidget(errMsg: state.error);
        } else {
          return Center(child: CustomProgressWidget());
        }
      },
    );
  }
}
