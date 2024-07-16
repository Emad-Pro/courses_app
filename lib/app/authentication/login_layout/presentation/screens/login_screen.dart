import 'package:courses_app/app/authentication/login_layout/presentation/controller/login_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/title_and_subtitle_authentications_widget.dart';
import '../widgets/login_button_widget.dart';
import '../widgets/login_divider_widget.dart';
import '../widgets/login_forgot_password_widget.dart';
import '../../../../../core/widgets/image_authentication_widget.dart';
import '../widgets/login_outher_social_actions_widget.dart';
import '../widgets/login_register_now_widget.dart';
import '../widgets/login_textformfileds_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LoginCubit(),
        child: const Scaffold(
            body: Padding(
          padding: EdgeInsets.all(15.0),
          child: CustomScrollView(
            slivers: [
              ImageAuthenticationWidget(),
              TitleAndSubtitleAuthenticationsWidget(
                title: "Let's get your login!",
                subtitle: "Enter your information bleow!",
              ),
              LoginOtherSocialActionsWidget(),
              LoginDividerWidget(),
              LoginTextFormFiledsWidgets(),
              LoginForgotPasswordWidget(),
              LoginButtonWidget(),
              LoginRegisterNowWidget()
            ],
          ),
        )));
  }
}
