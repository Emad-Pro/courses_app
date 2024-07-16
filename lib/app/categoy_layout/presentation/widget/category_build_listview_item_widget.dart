import 'package:courses_app/app/categoy_layout/presentation/controller/category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/category_global/entits/category_item.dart';
import '../../../../core/category_global/list/category_list.dart';

class CategoryBuildListViewItemWidget extends StatelessWidget {
  const CategoryBuildListViewItemWidget({
    super.key,
    required this.category,
    required this.index,
  });
  final CategoryItem category;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(builder: (context, state) {
      final isSelected = state.selectedCategoryIds.contains(category.id);
      final categoryCubit = context.read<CategoryCubit>();
      final themeColor = Theme.of(context).colorScheme;
      return Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
              color: isSelected
                  ? themeColor.surface
                  : themeColor.onSurface.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(8),
          color: isSelected ? themeColor.primary : Colors.transparent,
        ),
        child: InkWell(
          onTap: () {
            categoryCubit.selectCategory(categoryList()[index].id);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                category.imagePath,
                colorFilter: ColorFilter.mode(
                    isSelected ? themeColor.surface : themeColor.onSurface,
                    BlendMode.srcIn),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                child: Text(
                  category.name,
                  style: TextStyle(
                      color: isSelected
                          ? themeColor.surface
                          : themeColor.onSurface),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
