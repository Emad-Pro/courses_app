import 'package:flutter/material.dart';

import '../../../forgot_password_layout/presentation/screens/forgot_password_screen.dart';

class LoginForgotPasswordWidget extends StatelessWidget {
  const LoginForgotPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: FittedBox(
      alignment: AlignmentDirectional.topEnd,
      fit: BoxFit.scaleDown,
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
              showDragHandle: true,
              context: context,
              builder: (context) => const ForgotPasswrodScreen());
        },
        child: Text(
          "Forogt Password?",
          textAlign: TextAlign.end,
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    ));
  }
}
