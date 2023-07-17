import 'package:flutter/material.dart';
import 'package:tharwatflutter/core/constants/app_router.dart';
import 'package:tharwatflutter/core/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),

      debugShowCheckedModeBanner: false,
      // home: const SplashView(),
    );
  }
}
