import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwatflutter/Features/home/data/models/book_model/book_model.dart';
import 'package:tharwatflutter/Features/home/presentation/manager/fetchSimilarBooks/fetch_similar_books_cubit.dart';
import 'package:tharwatflutter/Features/home/presentation/view_model/widgets/book_details/book_details_view_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({
    super.key, required this.bookModel,
  });
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<FetchSimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo!.authors![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BookDetailsViewBody(
          bookModel: widget.bookModel,
        ),
      ),
    );
  }
}
