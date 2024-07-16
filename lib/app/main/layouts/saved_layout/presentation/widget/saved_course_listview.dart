import '../../../../../../core/import/app.dart';
import '../../../../../../core/widgets/custom_build_curses_Item_widget.dart';

class SavedCourseListView extends StatelessWidget {
  const SavedCourseListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 6,
          shrinkWrap: true,
          itemBuilder: (ctx, index) {
            return CustomBuildCoursesItemWidget(
              width: MediaQuery.sizeOf(context).width,
            );
          },
        ),
      ),
    );
  }
}
