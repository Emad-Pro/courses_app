import 'package:flutter/material.dart';

import '../../../../core/responsive_layout/app_styles.dart';

class CategoryTitleAndSubTitleWidget extends StatelessWidget {
  const CategoryTitleAndSubTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select your interest?',
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 35)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Choose your interest for better search',
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}
