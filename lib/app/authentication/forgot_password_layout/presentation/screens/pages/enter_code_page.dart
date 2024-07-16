import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../widgets/enter_code_action_buttons_widget.dart';
import '../../widgets/enter_code_otp_fileds_widget.dart';
import '../../widgets/enter_code_title_and_subtitle_widget.dart';

class EnterCodePage extends StatelessWidget {
  const EnterCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      child: const CustomScrollView(
        slivers: [
          EnterCodeTitleAndSubtitleWidget(),
          EnterCodeOtpFiledsWidget(),
          EnterCodeActionButtonsWidget()
        ],
      ),
    );
  }
}
