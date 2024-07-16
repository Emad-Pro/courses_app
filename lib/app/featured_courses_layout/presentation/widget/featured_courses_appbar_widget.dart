import 'package:flutter/material.dart';

import '../../../../core/responsive_layout/app_styles.dart';

class FeaturedCoursesAppBarWidget extends StatelessWidget {
  const FeaturedCoursesAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      scrolledUnderElevation: 0,
      pinned: true,
      centerTitle: true,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded)),
      title: Text(
        "Featured Courses",
        style: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 26),
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
