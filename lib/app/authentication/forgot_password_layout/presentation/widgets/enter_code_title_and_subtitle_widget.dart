import 'package:flutter/material.dart';

import '../../../../../core/widgets/title_and_subtitle_authentications_widget.dart';

class EnterCodeTitleAndSubtitleWidget extends StatelessWidget {
  const EnterCodeTitleAndSubtitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TitleAndSubtitleAuthenticationsWidget(
      title: "Enter Verification Code",
      subtitle: "We have to sent the verification code to ",
      subtitle2: Text(
        "(209) 555-0104",
        style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(1)),
      ),
    );
  }
}
