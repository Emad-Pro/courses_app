import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_auth_button_widget.dart';
import '../controller/register_cubit.dart';

class RegisterActionsButtonsWidget extends StatelessWidget {
  const RegisterActionsButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          return Column(
            children: [
              CustomAuthButtonWidget(
                stateValue: state.stateValue,
                onTap: () {},
                title: "Register",
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already a member? "),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text("Login",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary)))
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
