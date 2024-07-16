import 'package:courses_app/core/responsive_layout/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../responsive_layout/app_styles.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return FittedBox(
      alignment: AlignmentDirectional.bottomStart,
      fit: BoxFit.scaleDown,
      child: Container(
        width: ResponsiveDevices.isMobile(context)
            ? (MediaQuery.of(context).size.width - 20) / 2
            : null,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: isDarkMode
                ? Theme.of(context).colorScheme.onSurface.withOpacity(0.005)
                : Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: isDarkMode
                    ? Theme.of(context).colorScheme.onSurface.withOpacity(0.2)
                    : Theme.of(context).colorScheme.surface)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).colorScheme.primary),
                child: SvgPicture.asset(
                  "assets/svg_icons/cateogry/business.svg",
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.surface, BlendMode.srcIn),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Design",
                      style: TextStyle(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 20),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: Text(
                      "${"15"} Courses",
                      style: TextStyle(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 16),
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(0.7)),
                    ),
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
