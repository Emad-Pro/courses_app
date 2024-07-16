import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_auth_button_widget.dart';
import '../controller/login_cubit.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return CustomAuthButtonWidget(
          stateValue: state.stateValue,
          onTap: () {},
          title: "Login",
        );
      },
    ));
  }
}
