import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';
part 'fetch_similar_books_state.dart';

class FetchSimilarBooksCubit extends Cubit<FetchSimilarBooksState> {
  FetchSimilarBooksCubit(this.homeRepo) : super(FetchSimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category }) async {
    emit(FetchSimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(FetchSimilarBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FetchSimilarBooksSuccess(books));
    });
  }
}
