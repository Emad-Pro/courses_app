import 'package:courses_app/app/authentication/login_layout/presentation/controller/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/widgets/custom_textformfiled.dart';

class LoginTextFormFiledsWidgets extends StatelessWidget {
  const LoginTextFormFiledsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        final loginCubit = BlocProvider.of<LoginCubit>(context);
        return SliverToBoxAdapter(
            child: Form(
          key: loginCubit.formKey,
          child: Column(
            children: [
              CustomTextFormField(
                  hintText: "Enter Email or Phone Number",
                  svgPath: "assets/svg_icons/auth/message.svg",
                  onChanged: (value) {
                    loginCubit.checkFormValue();
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your email or phone number";
                    } else {
                      return null;
                    }
                  },
                  labelText: "Email or Phone Number"),
              CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your password";
                  } else {
                    return null;
                  }
                },
                onChanged: (value) {
                  loginCubit.checkFormValue();
                },
                hintText: "Enter Password",
                svgPath: "assets/svg_icons/auth/lock.svg",
                labelText: "Password",
                obscure: state.obsecure,
                suffix: IconButton(
                    onPressed: () {
                      loginCubit.changeObsecureState();
                    },
                    icon: SvgPicture.asset(
                      state.obsecure
                          ? "assets/svg_icons/auth/eye_closed.svg"
                          : "assets/svg_icons/auth/eye_open.svg",
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.onSurface,
                          BlendMode.srcIn),
                    )),
              ),
            ],
          ),
        ));
      },
    );
  }
}
