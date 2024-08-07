// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'review_cubit.dart';

class ReviewState extends Equatable {
  const ReviewState({this.isWriteInFiled = false});
  final bool isWriteInFiled;

  ReviewState copyWith({
    bool? isWriteInFiled,
  }) {
    return ReviewState(
      isWriteInFiled: isWriteInFiled ?? this.isWriteInFiled,
    );
  }

  @override
  List<Object> get props => [isWriteInFiled];
}
