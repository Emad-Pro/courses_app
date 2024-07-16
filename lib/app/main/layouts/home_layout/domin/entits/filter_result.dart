import 'package:equatable/equatable.dart';

import '../../../../../../core/import/app.dart';

class FilterResult extends Equatable {
  final List<CategoryItem>? category;
  final RangeSlider? rangePrice;

  const FilterResult({this.category, this.rangePrice});
  @override
  List<Object?> get props => [category, rangePrice];
}
