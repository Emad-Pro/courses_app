import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/forgotpassword_cubit.dart';
import 'select_otp_build_select_otp_contact_widget.dart';

class SelectOtpListViewSelectContactWidget extends StatelessWidget {
  const SelectOtpListViewSelectContactWidget({super.key, required this.state});
  final ForgotPasswordState state;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: context.read<ForgotPasswordCubit>().otpContacts.length,
        itemBuilder: (context, index) {
          return SelectOtpBuildSelectOtpContactWidget(
            state: state,
            index: index,
            selectOtpContact:
                context.read<ForgotPasswordCubit>().otpContacts[index],
          );
        });
  }
}
