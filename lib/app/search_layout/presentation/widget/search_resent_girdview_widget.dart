import 'package:flutter/material.dart';

import '../../../../core/responsive_layout/app_styles.dart';
import '../../../../core/responsive_layout/responsive_layout.dart';
import 'search_build_recent_search_button.dart';

class SearchResentGridviewWidget extends StatelessWidget {
  const SearchResentGridviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent Search',
              style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 18),
                fontWeight: FontWeight.bold,
              ),
            ),
            GridView.builder(
                itemCount: 4,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  crossAxisCount: ResponsiveDevices.isTablet(context) ? 4 : 2,
                  mainAxisExtent:
                      ResponsiveDevices.isTablet(context) ? 100 : 50,
                ),
                itemBuilder: (context, index) {
                  return const FittedBox(
                    alignment: AlignmentDirectional.bottomStart,
                    fit: BoxFit.scaleDown,
                    child: SearchBuildRecentSearchButton(
                      text: 'UI/UX Designer',
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
