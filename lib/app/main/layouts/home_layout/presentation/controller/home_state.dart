part of 'home_cubit.dart';

// ignore: must_be_immutable
class HomeState extends Equatable {
  const HomeState(
      {this.sliderFilterPrice = const RangeValues(100, 500),
      this.showCategoryItemLegth = 5,
      this.selectedCategoryIds,
      this.filterResult});
  final RangeValues sliderFilterPrice;
  final List<int>? selectedCategoryIds;
  final int showCategoryItemLegth;
  final FilterResult? filterResult;
  HomeState copyWith(
      {RangeValues? sliderFilterPrice,
      int? showCategoryItemLegth,
      List<int>? selectedCategoryIds,
      int? selectedPrice,
      FilterResult? filterResult}) {
    return HomeState(
        selectedCategoryIds: selectedCategoryIds ?? this.selectedCategoryIds,
        sliderFilterPrice: sliderFilterPrice ?? this.sliderFilterPrice,
        showCategoryItemLegth:
            showCategoryItemLegth ?? this.showCategoryItemLegth,
        filterResult: filterResult ?? this.filterResult);
  }

  @override
  List<Object?> get props => [
        sliderFilterPrice,
        showCategoryItemLegth,
        selectedCategoryIds,
        filterResult
      ];
}
