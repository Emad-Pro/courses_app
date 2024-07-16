part of 'register_cubit.dart';

class RegisterState extends Equatable {
  const RegisterState({
    this.stateValue = false,
    this.obsecure = true,
  });
  final bool stateValue;
  final bool obsecure;

  RegisterState copyWith({
    bool? stateValue,
    bool? obsecure,
  }) {
    return RegisterState(
      stateValue: stateValue ?? this.stateValue,
      obsecure: obsecure ?? this.obsecure,
    );
  }

  @override
  List<Object> get props => [stateValue, obsecure];
}
