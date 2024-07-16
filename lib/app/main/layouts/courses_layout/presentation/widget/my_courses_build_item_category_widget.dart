import '../../../../../../core/import/app.dart';
import '../../domin/entitis/my_courses.dart';

class MyCoursesBuildItemCategoryWidget extends StatelessWidget {
  const MyCoursesBuildItemCategoryWidget({
    super.key,
    required this.myCourses,
  });

  final MyCourses myCourses;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Theme.of(context).colorScheme.primary),
      child: Text(
        myCourses.courceCategory,
        style: TextStyle(color: Theme.of(context).colorScheme.surface),
      ),
    );
  }
}
