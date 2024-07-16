import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../controller/search_cubit.dart';

class SearchTextFormFiledWidget extends StatelessWidget {
  const SearchTextFormFiledWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            border: Border.all(
                color: isDarkMode
                    ? Theme.of(context).colorScheme.onSurface.withOpacity(0.2)
                    : Theme.of(context).colorScheme.surface),
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).colorScheme.surface),
        width: MediaQuery.of(context).size.width - 20,
        child: TextFormField(
          controller: context.read<SearchCubit>().searchEditigngController,
          autofocus: true,
          onChanged: (value) {},
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: FittedBox(
                fit: BoxFit.scaleDown,
                child: SvgPicture.asset(
                  "assets/svg_icons/main/search.svg",
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
                  width: 30,
                  height: 30,
                ),
              ),
              hintText: "Search",
              contentPadding: const EdgeInsets.all(20)),
        ),
      ),
    );
  }
}
