import '../../../../../../../core/category_global/list/category_list.dart';
import '../../../../../../../core/import/app.dart';
import '../../controller/home_cubit.dart';

class FilterBuildMultiSelectItemWidget extends StatelessWidget {
  const FilterBuildMultiSelectItemWidget(
      {super.key,
      required this.homeState,
      required this.categoryId,
      required this.index});
  final HomeState homeState;
  final int categoryId;
  final int index;

  @override
  Widget build(BuildContext context) {
    bool isSelected;
    if (homeState.selectedCategoryIds != null) {
      isSelected = homeState.selectedCategoryIds!.contains(categoryId);
    } else {
      isSelected = false;
    }

    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          children: [
            Checkbox(
              value: isSelected,
              onChanged: (value) {
                context
                    .read<HomeCubit>()
                    .selectCategory(categoryList()[index].id);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(context.read<HomeCubit>().categoryItem[index].name),
            )
          ],
        ));
  }
}
