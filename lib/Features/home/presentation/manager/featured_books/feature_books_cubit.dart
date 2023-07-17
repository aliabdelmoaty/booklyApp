import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tharwatflutter/Features/home/data/models/book_model/book_model.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit() : super(FeatureBooksInitial());
}
