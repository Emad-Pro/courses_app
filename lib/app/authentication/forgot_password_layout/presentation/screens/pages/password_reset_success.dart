import 'package:flutter/material.dart';

import '../../widgets/password_reset_success_back_home_button_widget.dart';
import '../../widgets/password_reset_success_circle_avatar_widget.dart';
import '../../widgets/password_reset_success_title_and_subtitle_widget.dart';

class PasswordResetSuccessPage extends StatelessWidget {
  const PasswordResetSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15),
      child: const CustomScrollView(
        slivers: [
          PasswordResetSuccessCircleAvatarWidget(),
          PasswordResetSuccessTitleAndSubtitleWidget(),
          PasswordResetSuccessBackHomeButtonWidget()
        ],
      ),
    );
  }
}
