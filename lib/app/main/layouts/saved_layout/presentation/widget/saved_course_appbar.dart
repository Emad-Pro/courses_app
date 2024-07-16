import '../../../../../../core/import/app.dart';

class SavedCourseAppbar extends StatelessWidget {
  const SavedCourseAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      pinned: true,
      title: Text("Saved Courses"),
      centerTitle: true,
    );
  }
}
