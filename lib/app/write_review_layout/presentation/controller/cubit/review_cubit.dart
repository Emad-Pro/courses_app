import 'package:bloc/bloc.dart';
import 'package:courses_app/core/import/app.dart';
import 'package:equatable/equatable.dart';

part 'review_state.dart';

class ReviewCubit extends Cubit<ReviewState> {
  ReviewCubit() : super(const ReviewState());
  TextEditingController commentController = TextEditingController();
  checkCommentText() =>
      emit(state.copyWith(isWriteInFiled: commentController.text.isNotEmpty));
}
