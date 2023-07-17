import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tharwatflutter/Features/home/data/models/book_model/book_model.dart';
import 'package:tharwatflutter/Features/home/data/repos/home_repo.dart';
import 'package:tharwatflutter/core/constants/api_service.dart';
import 'package:tharwatflutter/core/errors/fails.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&subject=programming&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['item']) {
        books.add(item);
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook() {
    // TODO: implement fetchFeaturedBook
    throw UnimplementedError();
  }
}
