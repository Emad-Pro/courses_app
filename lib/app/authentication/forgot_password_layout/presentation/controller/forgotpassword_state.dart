part of 'forgotpassword_cubit.dart';

class ForgotPasswordState extends Equatable {
  const ForgotPasswordState(
      {this.currentIndex = 0,
      this.obsecure = true,
      this.statePasswordScreens = StatePasswordScreens.select});
  final int currentIndex;
  final StatePasswordScreens statePasswordScreens;
  final bool obsecure;
  ForgotPasswordState copyWith({
    int? currentIndex,
    StatePasswordScreens? statePasswordScreens,
    bool? obsecure,
  }) {
    return ForgotPasswordState(
        currentIndex: currentIndex ?? this.currentIndex,
        statePasswordScreens: statePasswordScreens ?? this.statePasswordScreens,
        obsecure: obsecure ?? this.obsecure);
  }

  @override
  List<Object> get props => [currentIndex, statePasswordScreens, obsecure];
}
