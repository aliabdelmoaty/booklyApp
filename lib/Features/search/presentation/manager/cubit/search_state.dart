part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchBooksLoading extends SearchState {}

class SearchBooksSuccess extends SearchState {
  final List<BookModel> books;

  const SearchBooksSuccess(this.books);
}

class SearchBooksFailure extends SearchState {
  final String error;

  const SearchBooksFailure(this.error);
}

