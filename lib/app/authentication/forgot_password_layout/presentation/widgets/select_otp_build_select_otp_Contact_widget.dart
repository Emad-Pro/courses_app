import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/responsive_layout/app_styles.dart';
import '../../domain/entitis/select_otp_contact.dart';
import '../controller/forgotpassword_cubit.dart';

class SelectOtpBuildSelectOtpContactWidget extends StatelessWidget {
  const SelectOtpBuildSelectOtpContactWidget(
      {super.key,
      required this.selectOtpContact,
      required this.index,
      required this.state});
  final SelectOtpContact selectOtpContact;
  final int index;
  final ForgotPasswordState state;
  @override
  Widget build(BuildContext context) {
    final bool selectIndex = index == state.currentIndex;

    return GestureDetector(
      onTap: () {
        context
            .read<ForgotPasswordCubit>()
            .changeOtpSelectContactCurrentIndex(index);
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: selectIndex
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.1))),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: selectIndex
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
              child: SvgPicture.asset(
                selectOtpContact.svgPath,
                colorFilter: ColorFilter.mode(
                    selectIndex
                        ? Theme.of(context).colorScheme.surface
                        : Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.3),
                    BlendMode.srcIn),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  onTap: () {
                    context
                        .read<ForgotPasswordCubit>()
                        .changeOtpSelectContactCurrentIndex(index);
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      label: Text(
                        selectOtpContact.labelName,
                        style: TextStyle(
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 16)),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
