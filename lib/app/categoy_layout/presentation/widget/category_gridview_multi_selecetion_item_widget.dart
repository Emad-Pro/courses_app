import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/category_global/list/category_list.dart';
import '../controller/category_cubit.dart';
import 'category_build_listview_item_widget.dart';

class CategoryGridviewMultiSelecetionItemWidget extends StatelessWidget {
  const CategoryGridviewMultiSelecetionItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        return SliverGrid.builder(
          itemCount: categoryList().length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) => CategoryBuildListViewItemWidget(
            index: index,
            category: categoryList()[index],
          ),
        );
      },
    );
  }
}
