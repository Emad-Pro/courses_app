import 'package:courses_app/app/main/layouts/home_layout/presentation/controller/home_cubit.dart';
import 'package:courses_app/core/import/app.dart';

import 'filter_build_multi_select_item_widget.dart';

class FilterCheckCourceSelectCategory extends StatelessWidget {
  const FilterCheckCourceSelectCategory({super.key, required this.homeState});
  final HomeState homeState;
  @override
  Widget build(BuildContext context) {
    final categoryItem = context.read<HomeCubit>().categoryItem;
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Category",
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 20),
                  fontWeight: FontWeight.w700),
            ),
            ListView.builder(
              itemCount: homeState.showCategoryItemLegth,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return FilterBuildMultiSelectItemWidget(
                  categoryId: categoryItem[index].id,
                  index: index,
                  homeState: homeState,
                );
              },
            ),
            TextButton(
                onPressed: () {
                  if (homeState.showCategoryItemLegth == 5) {
                    context
                        .read<HomeCubit>()
                        .changeCategoryLengthList(categoryItem.length);
                  } else {
                    context.read<HomeCubit>().changeCategoryLengthList(5);
                  }
                },
                child: Text(homeState.showCategoryItemLegth == 5
                    ? "Show More"
                    : "Show Less"))
          ],
        ),
      ),
    );
  }
}
