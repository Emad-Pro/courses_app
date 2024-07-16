import 'package:courses_app/app/authentication/forgot_password_layout/presentation/controller/forgotpassword_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_auth_button_widget.dart';
import '../controller/enum.dart';

class SelectOtpButtonWidget extends StatelessWidget {
  const SelectOtpButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CustomAuthButtonWidget(
        onTap: () {
          context
              .read<ForgotPasswordCubit>()
              .changePage(StatePasswordScreens.verification);
        },
        stateValue: true,
        title: "Send Code",
      ),
    );
  }
}
