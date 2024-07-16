import 'package:courses_app/app/course_details_layout/presentation/screen/courses_details_screen.dart';
import 'package:flutter/material.dart';

import '../responsive_layout/app_styles.dart';
import '../responsive_layout/responsive_layout.dart';

class CustomBuildCoursesItemWidget extends StatelessWidget {
  const CustomBuildCoursesItemWidget({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const CoursesDetailsScreen()));
      },
      child: Container(
        width: width,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:
              isDarkMode ? color.onSurface.withOpacity(0.001) : color.surface,
          border: Border.all(
              color: isDarkMode
                  ? color.onSurface.withOpacity(0.06)
                  : color.surface),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width,
              height: ResponsiveDevices.isMobile(context) ? 170 : 230,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/fake_image.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: color.primary),
              child: Text(
                "UI/UX Design",
                style: TextStyle(color: color.surface),
              ),
            ),
            SizedBox(
              width: width,
              child: Text(
                "User Interface Design Essentials",
                style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 22),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: width,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star_rounded,
                    color: Colors.amber[800],
                  ),
                  Text(
                    " ${"4.9"}${"  (80 Reviews)"}",
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(context, fontSize: 18)),
                  ),
                  const Spacer(),
                  Text(
                    "\$75",
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(context, fontSize: 24),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
