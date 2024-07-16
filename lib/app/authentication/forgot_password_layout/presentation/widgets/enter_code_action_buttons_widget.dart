import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_auth_button_widget.dart';
import '../controller/enum.dart';
import '../controller/forgotpassword_cubit.dart';

class EnterCodeActionButtonsWidget extends StatelessWidget {
  const EnterCodeActionButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Resend Code "),
                Text(
                  "5:00s",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                )
              ],
            ),
            CustomAuthButtonWidget(
                stateValue: true,
                title: "Submit",
                onTap: () {
                  context
                      .read<ForgotPasswordCubit>()
                      .changePage(StatePasswordScreens.enterNew);
                })
          ],
        ),
      ),
    );
  }
}
