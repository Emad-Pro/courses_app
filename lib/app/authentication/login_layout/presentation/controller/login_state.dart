part of 'login_cubit.dart';

class LoginState extends Equatable {
  const LoginState({
    this.stateValue = false,
    this.obsecure = true,
  });
  final bool stateValue;
  final bool obsecure;

  LoginState copyWith({
    bool? stateValue,
    bool? obsecure,
  }) {
    return LoginState(
      stateValue: stateValue ?? this.stateValue,
      obsecure: obsecure ?? this.obsecure,
    );
  }

  @override
  List<Object> get props => [stateValue, obsecure];
}
