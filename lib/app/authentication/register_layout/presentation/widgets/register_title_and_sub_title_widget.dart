import 'package:flutter/material.dart';

import '../../../../../core/widgets/title_and_subtitle_authentications_widget.dart';

class RegisterTitleAndSubtitleWidget extends StatelessWidget {
  const RegisterTitleAndSubtitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TitleAndSubtitleAuthenticationsWidget(
        title: "Register Now!", subtitle: "Enter your information bleow!");
  }
}
