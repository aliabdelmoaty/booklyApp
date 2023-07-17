import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tharwatflutter/Features/home/data/models/book_model/book_model.dart';
import 'package:tharwatflutter/Features/home/data/repos/home_repo.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoading());
    var result = await homeRepo.fetchFeaturedBook();
    result.fold((failure) {
      emit(FeatureBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FeatureBooksSuccess(books));
    });
  }
}
