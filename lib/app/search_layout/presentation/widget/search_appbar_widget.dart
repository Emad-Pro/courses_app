import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/responsive_layout/app_styles.dart';

class SearchAppbarWidget extends StatelessWidget {
  const SearchAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset(
                  "assets/svg_icons/courses_details/arrow_left.svg",
                  width: 27,
                  height: 27,
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
                ),
              ),
            ),
            Text(
              "Search",
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 24),
                  fontWeight: FontWeight.w700),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
