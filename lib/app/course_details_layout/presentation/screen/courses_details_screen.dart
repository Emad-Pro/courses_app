import 'package:flutter/material.dart';

import '../widget/courses_details_buy_now_widget.dart';
import '../widget/courses_details_discription_text_widget.dart';
import '../widget/courses_details_header_widgets.dart';
import '../widget/courses_details_info_course_widget.dart';
import '../widget/courses_details_info_tetcher_widget.dart';
import '../widget/courses_details_lessons_listview_widget.dart';

class CoursesDetailsScreen extends StatelessWidget {
  const CoursesDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                CoursesDetailsHeaderWidgets(),
                CoursesDetailsInfoCourseWidgets(),
                CoursesDetailsInfoTeatcherWidget(),
                CoursesDetailsDiscriptionTextWidget(),
                CoursesDetailsLessonsListViewWidget(),
              ],
            ),
          ),
          CoursesDetailsBuyNowWidget(),
        ],
      ),
    );
  }
}
