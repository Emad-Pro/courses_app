import 'package:flutter/material.dart';

import '../../../../core/responsive_layout/app_styles.dart';

class CoursesDetailsDiscriptionTextWidget extends StatelessWidget {
  const CoursesDetailsDiscriptionTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Text(
          'Product Designers are responsible for coming up with new product designs that meet the needs and wants of consumers. They will have many duties, such as creating design concepts, drawing ideas to determine...',
          style: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
