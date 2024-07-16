import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/widgets/avatar_glow.dart';

class PasswordResetSuccessCircleAvatarWidget extends StatelessWidget {
  const PasswordResetSuccessCircleAvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AvatarGlow(
        glowCount: 1,
        child: CircleAvatar(
          radius: 35,
          child: SvgPicture.asset(
            "assets/svg_icons/auth/check_circle.svg",
            colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
