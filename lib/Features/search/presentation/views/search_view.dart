import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwatflutter/Features/search/presentation/manager/cubit/search_cubit.dart';
import 'package:tharwatflutter/Features/search/presentation/views/widgets/search_view_body.dart';
import 'package:tharwatflutter/core/constants/service_locator.dart';

import '../../../home/data/repos/home_repo_impl.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(
        getIt.get<HomeRepoImpl>()
      )..fetchSearchBooks(),
      child: const Scaffold(
          body: SafeArea(child: SearchViewBody()),
        ),
    );
  }
}
