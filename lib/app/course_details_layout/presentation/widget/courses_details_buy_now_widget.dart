import 'package:flutter/material.dart';

import '../../../../core/responsive_layout/app_styles.dart';

class CoursesDetailsBuyNowWidget extends StatelessWidget {
  const CoursesDetailsBuyNowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          'Buy Now',
          style: TextStyle(
              color: Theme.of(context).colorScheme.surface,
              fontSize: getResponsiveFontSize(context, fontSize: 22),
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
