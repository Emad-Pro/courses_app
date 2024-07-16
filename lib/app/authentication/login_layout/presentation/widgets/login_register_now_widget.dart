import 'package:courses_app/app/authentication/register_layout/presentation/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoginRegisterNowWidget extends StatelessWidget {
  const LoginRegisterNowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      fillOverscroll: true,
      hasScrollBody: false,
      child: Column(
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account? "),
              GestureDetector(
                child: Text(
                  "Register Now",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()));
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
