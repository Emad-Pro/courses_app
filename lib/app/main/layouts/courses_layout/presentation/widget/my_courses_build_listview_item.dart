import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../../../core/import/app.dart';

import '../../../../../video_player/presentation/screens/video_player_screen.dart';
import '../controller/cubit/my_courses_cubit.dart';
import 'my_courses_buil_item_image_widget.dart';
import 'my_courses_build_item_category_widget.dart';
import 'my_courses_build_item_liner_inicator_and_progress_widget.dart';
import 'my_courses_slider_delete_button.dart';

class MyCoursesBuildListViewItem extends StatelessWidget {
  const MyCoursesBuildListViewItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final myCoursesCubit = context.read<MyCoursesCubit>();
    final myCourses = myCoursesCubit.testCourses[index];
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => VideoPlayerScreen()));
      },
      child: Slidable(
        key: const ValueKey(0),
        endActionPane: ActionPane(
          dragDismissible: false,
          motion: const ScrollMotion(),
          dismissible: DismissiblePane(onDismissed: () {}),
          children: const [
            MyCoursesSliderDeleteButton(),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isDarkMode
                ? Theme.of(context).colorScheme.onSurface.withOpacity(0.01)
                : Theme.of(context).colorScheme.surface,
            border: Border.all(
                color: isDarkMode
                    ? Theme.of(context).colorScheme.onSurface.withOpacity(0.09)
                    : Theme.of(context).colorScheme.surface),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyCoursesBuildItemImageWiget(myCourses: myCourses),
              MyCoursesBuildItemCategoryWidget(myCourses: myCourses),
              SizedBox(
                width: double.infinity,
                child: Text(
                  myCourses.courceName,
                  style: TextStyle(
                      fontSize: getResponsiveFontSize(context, fontSize: 22),
                      fontWeight: FontWeight.bold),
                ),
              ),
              MyCoursesBuildItemLinerInicatorAndProgressWidget(
                  myCourses: myCourses, myCoursesCubit: myCoursesCubit)
            ],
          ),
        ),
      ),
    );
  }
}
