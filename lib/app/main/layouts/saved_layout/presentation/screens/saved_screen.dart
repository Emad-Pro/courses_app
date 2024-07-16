import 'package:flutter/material.dart';

import '../widget/saved_course_appbar.dart';
import '../widget/saved_course_listview.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      color: isDark
          ? null
          : Theme.of(context).colorScheme.onSurface.withOpacity(0.07),
      child: const CustomScrollView(
        slivers: [SavedCourseAppbar(), SavedCourseListView()],
      ),
    );
  }
}
