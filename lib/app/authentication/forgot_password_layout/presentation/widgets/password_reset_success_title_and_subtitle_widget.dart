import 'package:flutter/material.dart';

import '../../../../../core/widgets/title_and_subtitle_authentications_widget.dart';

class PasswordResetSuccessTitleAndSubtitleWidget extends StatelessWidget {
  const PasswordResetSuccessTitleAndSubtitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TitleAndSubtitleAuthenticationsWidget(
      title: "Password Update Successflluy",
      subtitle: 'Your password has been updated successflly',
    );
  }
}
