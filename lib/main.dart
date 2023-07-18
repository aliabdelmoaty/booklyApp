import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwatflutter/Features/home/data/repos/home_repo_impl.dart';
import 'package:tharwatflutter/Features/home/presentation/manager/featured_books/feature_books_cubit.dart';
import 'package:tharwatflutter/Features/home/presentation/manager/newset%20_books/newset_books_cubit.dart';
import 'package:tharwatflutter/core/constants/app_router.dart';
import 'package:tharwatflutter/core/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tharwatflutter/core/constants/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),

        debugShowCheckedModeBanner: false,
        // home: const SplashView(),
      ),
    );
  }
}
