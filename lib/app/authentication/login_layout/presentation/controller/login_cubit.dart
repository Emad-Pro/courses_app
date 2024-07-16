import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());
  TextEditingController emailOrPhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  checkFormValue() {
    if (formKey.currentState!.validate()) {
      emit(state.copyWith(stateValue: true));
    } else {
      emit(state.copyWith(stateValue: false));
    }
  }

  changeObsecureState() {
    if (state.obsecure == true) {
      emit(state.copyWith(obsecure: false));
    } else {
      emit(state.copyWith(obsecure: true));
    }
  }
}
