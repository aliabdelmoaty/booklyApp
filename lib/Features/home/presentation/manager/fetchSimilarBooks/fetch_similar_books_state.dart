part of 'fetch_similar_books_cubit.dart';

abstract class FetchSimilarBooksState extends Equatable {
  const FetchSimilarBooksState();

  @override
  List<Object> get props => [];
}

class FetchSimilarBooksInitial extends FetchSimilarBooksState {}
class FetchSimilarBooksLoading extends FetchSimilarBooksState {}

class FetchSimilarBooksSuccess extends FetchSimilarBooksState {
  final List<BookModel> books;

  const FetchSimilarBooksSuccess(this.books);
}

class FetchSimilarBooksFailure extends FetchSimilarBooksState {
  final String error;

  const FetchSimilarBooksFailure(this.error);
}
