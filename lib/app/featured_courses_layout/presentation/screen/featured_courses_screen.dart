import 'package:flutter/material.dart';

import '../widget/featured_courses_appbar_widget.dart';
import '../widget/featured_courses_listview_widget.dart';

class FeaturedCoursesScreen extends StatelessWidget {
  const FeaturedCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          FeaturedCoursesAppBarWidget(),
          FeaturedCoursesListViewWidget(),
        ],
      ),
    );
  }
}
