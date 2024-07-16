import 'package:flutter/material.dart';

import 'courses_details_build_lessons_item_widget.dart';

class CoursesDetailsLessonsListViewWidget extends StatelessWidget {
  const CoursesDetailsLessonsListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Lessons',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ListView.separated(
                  itemCount: 31,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 25,
                      child: Divider(
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.05),
                      ),
                    );
                  },
                  itemBuilder: (context, index) {
                    return const CoursesDetailsBuildLessonsItemWidget(
                        title: "Introdction", duration: "15 mins");
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
