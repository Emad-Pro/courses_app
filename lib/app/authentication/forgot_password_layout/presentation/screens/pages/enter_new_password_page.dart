import 'package:courses_app/app/authentication/forgot_password_layout/presentation/controller/forgotpassword_cubit.dart';
import 'package:flutter/material.dart';

import '../../widgets/enter_new_password_change_password_button_widget.dart';
import '../../widgets/enter_new_password_textformfileds_widget.dart';
import '../../widgets/enter_new_password_title_and_subtitle_widget.dart';

class EnterNewPasswordPage extends StatelessWidget {
  const EnterNewPasswordPage({super.key, required this.state});
  final ForgotPasswordState state;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const EnterNewPasswordTitleAndSubTitleWidget(),
        EnterNewPasswordTextFormFiledsWidget(state: state),
        const EnterNewPasswordChangePasswordButtonWidget()
      ],
    );
  }
}
