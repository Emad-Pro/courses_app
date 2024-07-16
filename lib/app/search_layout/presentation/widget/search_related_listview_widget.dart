import 'package:flutter/material.dart';

import '../../../../core/responsive_layout/app_styles.dart';
import '../../../../core/widgets/custom_build_curses_Item_widget.dart';

class SearchRealtedListViewWidget extends StatelessWidget {
  const SearchRealtedListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Related Search",
              style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 18),
                fontWeight: FontWeight.bold,
              ),
            ),
            ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const CustomBuildCoursesItemWidget(
                    width: double.infinity,
                  );
                })
          ],
        ),
      ),
    );
  }
}
