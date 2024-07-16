import 'package:flutter/material.dart';

import '../../../../../../featured_courses_layout/presentation/screen/featured_courses_screen.dart';
import '../custom_row_title_and_see_all_widget.dart';
import 'home_body_featured_courses_listview_widget.dart';

class HomeBodyFeaturedCoursesWidgets extends StatelessWidget {
  const HomeBodyFeaturedCoursesWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomRowTitleAndSeeAllWidgets(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FeaturedCoursesScreen()));
                },
                titleText: "Featrued Courses"),
            const HomeBodyFeaturedCoursesListViewWidget()
          ],
        ),
      ),
    );
  }
}
