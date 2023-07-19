import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwatflutter/Features/home/data/models/book_model/book_model.dart';
import 'package:tharwatflutter/Features/home/data/repos/home_repo_impl.dart';
import 'package:tharwatflutter/Features/home/presentation/view_model/home_view.dart';
import 'package:tharwatflutter/Features/search/presentation/views/search_view.dart';
import 'package:tharwatflutter/core/constants/service_locator.dart';

import '../../Features/Splash/presentation/view_models/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/presentation/manager/fetchSimilarBooks/fetch_similar_books_cubit.dart';
import '../../Features/home/presentation/view_model/book_details.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) =>  BlocProvider(
          create: (context) => FetchSimilarBooksCubit(getIt<HomeRepoImpl>()),
          child:  BookDetailsView(bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
