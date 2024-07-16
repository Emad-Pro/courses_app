import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/responsive_layout/app_styles.dart';

class CoursesDetailsBuildLessonsItemWidget extends StatelessWidget {
  final String title;
  final String duration;

  const CoursesDetailsBuildLessonsItemWidget(
      {super.key, required this.title, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).colorScheme.primary.withOpacity(0.1)),
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(
              "assets/svg_icons/courses_details/play.svg",
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary, BlendMode.srcIn),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 20),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    duration,
                    style: TextStyle(
                      fontSize: getResponsiveFontSize(context, fontSize: 18),
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          SvgPicture.asset(
            "assets/svg_icons/courses_details/arrow_right.svg",
            colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
          ),
        ],
      ),
    );
  }
}
