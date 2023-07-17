import 'package:tharwatflutter/Features/home/presentation/view_model/home_view.dart';
import 'package:tharwatflutter/Features/search/presentation/views/search_view.dart';

import '../../Features/Splash/presentation/view_models/views/splash_view.dart';
import 'package:go_router/go_router.dart';

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
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
