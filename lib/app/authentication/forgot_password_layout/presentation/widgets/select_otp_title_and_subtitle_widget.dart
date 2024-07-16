import 'package:flutter/material.dart';

import '../../../../../core/widgets/title_and_subtitle_authentications_widget.dart';

class SelectOtpTitleAndSubtitleWidget extends StatelessWidget {
  const SelectOtpTitleAndSubtitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TitleAndSubtitleAuthenticationsWidget(
      title: "Forgot Password",
      subtitle:
          "Select which contact details should we use to rest your password",
    );
  }
}
