import 'package:courses_app/core/import/app.dart';

import '../../../../../../../core/widgets/custom_button_selection_widget.dart';
import '../../../domin/entits/filter_sort_by_price.dart';
import '../../controller/home_cubit.dart';

class FilterSortBuilditemWidget extends StatelessWidget {
  const FilterSortBuilditemWidget(
      {super.key, required this.homeState, required this.filterSortByPrice});
  final HomeState homeState;
  final FilterSortByPrice filterSortByPrice;
  @override
  Widget build(BuildContext context) {
    bool isSelected = filterSortByPrice.values == homeState.sliderFilterPrice;
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: InkWell(
        onTap: () {
          context
              .read<HomeCubit>()
              .changeFilterSliderPriceWithSortBy(filterSortByPrice);
        },
        child: CustomButtonSelectionWidget(
            isSelected: isSelected, title: filterSortByPrice.title),
      ),
    );
  }
}
