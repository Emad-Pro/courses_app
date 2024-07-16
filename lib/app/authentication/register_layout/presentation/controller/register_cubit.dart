import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState());
  GlobalKey<FormState> formKey = GlobalKey();
  void checkFileds() {
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
