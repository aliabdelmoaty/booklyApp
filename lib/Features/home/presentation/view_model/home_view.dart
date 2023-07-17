import 'package:flutter/material.dart';
import 'package:tharwatflutter/Features/home/presentation/view_model/widgets/home_view/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}
