import 'package:dartz/dartz.dart';
import 'package:tharwatflutter/Features/home/data/models/book_model/book_model.dart';

import '../../../../core/errors/fails.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModel>>> fetchBestSellerBook();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBook();
}
