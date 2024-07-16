import 'package:courses_app/app/search_layout/presentation/controller/search_cubit.dart';
import 'package:courses_app/app/search_layout/presentation/screen/page/search_init_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'page/search_related_page.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key, required this.value});
  final String value;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SearchCubit(),
        child: Scaffold(
          body: Container(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.04),
            child: BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                context.read<SearchCubit>().searchEditigngController.text =
                    value;
                switch (state.searchPageState) {
                  case SearchPageState.initPage:
                    return const SearchInitPage();
                  case SearchPageState.relatedPage:
                    return const SearchRelatedPage();
                }
              },
            ),
          ),
        ));
  }
}
