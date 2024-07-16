import 'package:courses_app/app/main/layouts/home_layout/domin/entits/filter_result.dart';
import 'package:courses_app/core/import/app.dart';
import 'package:equatable/equatable.dart';
import '../../../../../../core/category_global/list/category_list.dart';
import '../../domin/entits/filter_sort_by_price.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

/*------------------------- Filter Screen------------ */
  List<FilterSortByPrice> filterSortByValues = [
    FilterSortByPrice(
        title: "Poular", values: const RangeValues(100, 500), id: 100500),
    FilterSortByPrice(
        title: "High Price", values: const RangeValues(900, 1000), id: 9001000),
    FilterSortByPrice(
        title: "Low Price", values: const RangeValues(10, 200), id: 10200)
  ];
  List<CategoryItem> categoryItem = categoryList();
  changeFilterSliderPrice(RangeValues value) {
    emit(state.copyWith(sliderFilterPrice: value));
  }

  initFilterData() {
    emit(state.copyWith());
  }

  changeFilterSliderPriceWithSortBy(FilterSortByPrice filterSortByValues) {
    if (filterSortByValues.id == 100500) {
      emit(state.copyWith(sliderFilterPrice: filterSortByValues.values));
    } else if (filterSortByValues.id == 900100) {
      emit(state.copyWith(sliderFilterPrice: filterSortByValues.values));
    } else {
      emit(state.copyWith(sliderFilterPrice: filterSortByValues.values));
    }
  }

  changeCategoryLengthList(int count) {
    emit(state.copyWith(showCategoryItemLegth: count));
  }

  void selectCategory(int categoryId) {
    final newSelectedCategoryIds = state.selectedCategoryIds?.toList() ?? [];
    if (newSelectedCategoryIds.contains(categoryId)) {
      newSelectedCategoryIds.remove(categoryId);
    } else {
      newSelectedCategoryIds.add(categoryId);
    }
    emit(state.copyWith(selectedCategoryIds: newSelectedCategoryIds));
  }
/*------------------------- Filter Screen------------ */
}
