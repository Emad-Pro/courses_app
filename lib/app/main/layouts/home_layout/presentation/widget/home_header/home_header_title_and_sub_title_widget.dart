import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../core/responsive_layout/app_styles.dart';

class HomeHeaderTitleAndSubtitleWidget extends StatelessWidget {
  const HomeHeaderTitleAndSubtitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Welcome Emad Younis ',
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 18),
                  color:
                      Theme.of(context).colorScheme.surface.withOpacity(0.6)),
            ),
            SvgPicture.asset(
              "assets/svg_icons/main/hi_hand.svg",
              width: 20,
              height: 20,
            ),
          ],
        ),
        Text(
          'Let\'s start learning',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: getResponsiveFontSize(context, fontSize: 24),
              color: Theme.of(context).colorScheme.surface),
        ),
      ],
    );
  }
}
