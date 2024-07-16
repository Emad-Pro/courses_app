import 'package:bloc/bloc.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryState());
  List<int> selectedCategoryIds = [];

  void selectCategory(int categoryId) {
    if (selectedCategoryIds.contains(categoryId)) {
      selectedCategoryIds.remove(categoryId);
    } else {
      selectedCategoryIds.add(categoryId);
    }
    emit(state.copyWith(selectedCategoryIds: selectedCategoryIds));
  }
}
