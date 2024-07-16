import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageAuthenticationWidget extends StatelessWidget {
  const ImageAuthenticationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          margin: const EdgeInsets.only(top: 50),
          child: SvgPicture.asset(
            "assets/svg_icons/auth/graduation.svg",
            height: 160,
            colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary, BlendMode.srcIn),
          )),
    );
  }
}
