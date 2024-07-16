import 'package:flutter/material.dart';

import '../../../../../core/widgets/title_and_subtitle_authentications_widget.dart';

class EnterNewPasswordTitleAndSubTitleWidget extends StatelessWidget {
  const EnterNewPasswordTitleAndSubTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TitleAndSubtitleAuthenticationsWidget(
        title: "Enter New Password",
        subtitle: "Please Enter Your New Password");
  }
}
