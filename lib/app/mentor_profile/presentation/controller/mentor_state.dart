part of 'mentor_cubit.dart';

class MentorState extends Equatable {
  const MentorState({this.selectionTabIndex = 0});
  final int selectionTabIndex;
  MentorState copyWith({int? selectionTabIndex}) {
    return MentorState(
        selectionTabIndex: selectionTabIndex ?? this.selectionTabIndex);
  }

  @override
  List<Object> get props => [selectionTabIndex];
}
