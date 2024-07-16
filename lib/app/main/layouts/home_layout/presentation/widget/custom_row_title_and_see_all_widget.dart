import 'package:flutter/material.dart';

import '../../../../../../core/responsive_layout/app_styles.dart';

class CustomRowTitleAndSeeAllWidgets extends StatelessWidget {
  const CustomRowTitleAndSeeAllWidgets(
      {super.key, required this.onTap, required this.titleText});
  final Function()? onTap;
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titleText,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getResponsiveFontSize(context, fontSize: 26)),
        ),
        const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Text(
            textAlign: TextAlign.center,
            "See All",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        )
      ],
    );
  }
}
