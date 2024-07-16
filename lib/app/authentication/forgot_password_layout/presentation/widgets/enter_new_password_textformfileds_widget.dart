import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/widgets/custom_textformfiled.dart';
import '../controller/forgotpassword_cubit.dart';

class EnterNewPasswordTextFormFiledsWidget extends StatelessWidget {
  const EnterNewPasswordTextFormFiledsWidget({
    super.key,
    required this.state,
  });

  final ForgotPasswordState state;

  @override
  Widget build(BuildContext context) {
    final forgotPasswordCubit = context.read<ForgotPasswordCubit>();
    return SliverToBoxAdapter(
        child: Column(
      children: [
        CustomTextFormField(
          obscure: state.obsecure,
          hintText: "Password",
          labelText: "Enter Password",
          suffix: IconButton(
              onPressed: () {
                forgotPasswordCubit.changeObsecureState();
              },
              icon: SvgPicture.asset(
                state.obsecure
                    ? "assets/svg_icons/auth/eye_closed.svg"
                    : "assets/svg_icons/auth/eye_open.svg",
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
              )),
        ),
        CustomTextFormField(
          obscure: state.obsecure,
          hintText: "Re-Enter Password",
          labelText: "Enter Conform Password",
          suffix: IconButton(
              onPressed: () {
                forgotPasswordCubit.changeObsecureState();
              },
              icon: SvgPicture.asset(
                state.obsecure
                    ? "assets/svg_icons/auth/eye_closed.svg"
                    : "assets/svg_icons/auth/eye_open.svg",
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
              )),
        ),
      ],
    ));
  }
}
