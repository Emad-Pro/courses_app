import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login_custom_button.dart';

class LoginOtherSocialActionsWidget extends StatelessWidget {
  const LoginOtherSocialActionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          Expanded(
            child: LoginCustomButton(
              onTap: () {},
              childTitle: "Google",
              icon: SvgPicture.asset(
                "assets/svg_icons/auth/google.svg",
                width: 30,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: LoginCustomButton(
              onTap: () {},
              childTitle: "Facebook",
              icon: SvgPicture.asset(
                "assets/svg_icons/auth/facebook.svg",
                width: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
