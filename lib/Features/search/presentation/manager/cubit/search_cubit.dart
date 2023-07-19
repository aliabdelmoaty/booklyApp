import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../home/data/models/book_model/book_model.dart';
import '../../../../home/data/repos/home_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSearchBooks() async {
    emit(SearchBooksLoading());
    var result = await homeRepo.fetchFeaturedBook();
    result.fold((failure) {
      emit(SearchBooksFailure(failure.errorMessage));
    }, (books) {
      emit(SearchBooksSuccess(books));
    });
  }
}
