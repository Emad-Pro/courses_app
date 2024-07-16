import 'package:courses_app/app/authentication/forgot_password_layout/presentation/controller/forgotpassword_cubit.dart';
import 'package:flutter/material.dart';
import '../../widgets/select_otp_button_widget.dart';
import '../../widgets/select_otp_listview_select_contact_widget.dart';
import '../../widgets/select_otp_title_and_subtitle_widget.dart';
import 'package:animate_do/animate_do.dart';

class SelectOtpPage extends StatelessWidget {
  const SelectOtpPage({super.key, required this.state});
  final ForgotPasswordState state;
  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomScrollView(
          slivers: [
            const SelectOtpTitleAndSubtitleWidget(),
            SelectOtpListViewSelectContactWidget(state: state),
            const SelectOtpButtonWidget()
          ],
        ),
      ),
    );
  }
}
