part of 'category_cubit.dart';

class CategoryState {
  final List<int> selectedCategoryIds;

  CategoryState copyWith({
    List<int>? selectedCategoryIds,
  }) {
    return CategoryState(
        selectedCategoryIds: selectedCategoryIds ?? this.selectedCategoryIds);
  }

  CategoryState({this.selectedCategoryIds = const []});
}
