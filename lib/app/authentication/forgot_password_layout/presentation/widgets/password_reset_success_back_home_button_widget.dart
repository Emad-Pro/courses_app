import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_auth_button_widget.dart';

class PasswordResetSuccessBackHomeButtonWidget extends StatelessWidget {
  const PasswordResetSuccessBackHomeButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CustomAuthButtonWidget(
          stateValue: true,
          title: "Back To Home",
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}
