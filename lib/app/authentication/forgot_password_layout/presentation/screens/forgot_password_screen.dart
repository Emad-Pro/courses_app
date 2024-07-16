import 'package:courses_app/app/authentication/forgot_password_layout/presentation/controller/enum.dart';
import 'package:courses_app/app/authentication/forgot_password_layout/presentation/controller/forgotpassword_cubit.dart';
import 'package:courses_app/app/authentication/forgot_password_layout/presentation/screens/pages/enter_code_page.dart';
import 'package:courses_app/app/authentication/forgot_password_layout/presentation/screens/pages/select_otp_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/enter_new_password_page.dart';
import 'pages/password_reset_success.dart';

class ForgotPasswrodScreen extends StatelessWidget {
  const ForgotPasswrodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ForgotPasswordCubit(),
        child: BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
            builder: (context, state) {
          switch (state.statePasswordScreens) {
            case StatePasswordScreens.select:
              return SelectOtpPage(state: state);
            case StatePasswordScreens.verification:
              return const EnterCodePage();
            case StatePasswordScreens.enterNew:
              return EnterNewPasswordPage(
                state: state,
              );
            case StatePasswordScreens.success:
              return const PasswordResetSuccessPage();
          }
        }),
      ),
    );
  }
}
