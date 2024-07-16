import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/widgets/custom_textformfiled.dart';
import '../controller/register_cubit.dart';

class RegisterTextFormFiledsWidget extends StatelessWidget {
  const RegisterTextFormFiledsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          final registerCubit = context.read<RegisterCubit>();
          return Form(
            key: registerCubit.formKey,
            child: Column(
              children: [
                CustomTextFormField(
                  onChanged: (value) {
                    registerCubit.checkFileds();
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your name";
                    } else {
                      return null;
                    }
                  },
                  hintText: "Enter your name",
                  svgPath: "assets/svg_icons/auth/user.svg",
                  labelText: "Name",
                ),
                CustomTextFormField(
                  hintText: "Enter your email",
                  svgPath: "assets/svg_icons/auth/message.svg",
                  labelText: "Email Address",
                  onChanged: (value) {
                    registerCubit.checkFileds();
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your email";
                    } else {
                      return null;
                    }
                  },
                ),
                CustomTextFormField(
                  hintText: "Enter your Mobile number",
                  svgPath: "assets/svg_icons/auth/phone.svg",
                  labelText: "Mobile number",
                  onChanged: (value) {
                    registerCubit.checkFileds();
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Mobile number";
                    } else {
                      return null;
                    }
                  },
                ),
                CustomTextFormField(
                  hintText: "Enter your password",
                  svgPath: "assets/svg_icons/auth/lock.svg",
                  labelText: "Password",
                  obscure: state.obsecure,
                  suffix: IconButton(
                      onPressed: () {
                        registerCubit.changeObsecureState();
                      },
                      icon: SvgPicture.asset(
                        state.obsecure
                            ? "assets/svg_icons/auth/eye_closed.svg"
                            : "assets/svg_icons/auth/eye_open.svg",
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.onSurface,
                            BlendMode.srcIn),
                      )),
                  onChanged: (value) {
                    registerCubit.checkFileds();
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your password";
                    } else {
                      return null;
                    }
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
