import 'package:bloc/bloc.dart';
import 'package:courses_app/app/authentication/forgot_password_layout/domain/entitis/select_otp_contact.dart';
import 'package:courses_app/app/authentication/forgot_password_layout/presentation/controller/enum.dart';
import 'package:equatable/equatable.dart';

part 'forgotpassword_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(const ForgotPasswordState());

  final List<SelectOtpContact> otpContacts = [
    const SelectOtpContact(
      labelName: "Send OTP via SMS",
      svgPath: "assets/svg_icons/auth/chat_dots.svg",
    ),
    const SelectOtpContact(
      labelName: "Send OTP via Email",
      svgPath: "assets/svg_icons/auth/message.svg",
    )
  ];
  changeOtpSelectContactCurrentIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  changePage(StatePasswordScreens forgotPasswrodScreen) {
    emit(state.copyWith(statePasswordScreens: forgotPasswrodScreen));
  }

  changeObsecureState() {
    if (state.obsecure == true) {
      emit(state.copyWith(obsecure: false));
    } else {
      emit(state.copyWith(obsecure: true));
    }
  }
}
