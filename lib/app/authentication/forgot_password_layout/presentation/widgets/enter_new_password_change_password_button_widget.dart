import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_auth_button_widget.dart';
import '../controller/enum.dart';
import '../controller/forgotpassword_cubit.dart';

class EnterNewPasswordChangePasswordButtonWidget extends StatelessWidget {
  const EnterNewPasswordChangePasswordButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final forgotPasswordCubit = context.read<ForgotPasswordCubit>();
    return SliverToBoxAdapter(
      child: CustomAuthButtonWidget(
        onTap: () {
          forgotPasswordCubit.changePage(StatePasswordScreens.success);
        },
        title: "Change Password",
        stateValue: true,
      ),
    );
  }
}
