import 'package:courses_app/core/responsive_layout/responsive_layout.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/widgets/custom_build_curses_Item_widget.dart';

class HomeBodyFeaturedCoursesListViewWidget extends StatelessWidget {
  const HomeBodyFeaturedCoursesListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ResponsiveDevices.isMobile(context) ? 350 : 450,
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CustomBuildCoursesItemWidget(
            width: MediaQuery.of(context).size.width / 1.4,
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20,
          );
        },
      ),
    );
  }
}
