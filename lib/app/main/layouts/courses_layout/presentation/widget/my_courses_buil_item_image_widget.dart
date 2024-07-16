import '../../../../../../core/import/app.dart';
import '../../../../../../core/responsive_layout/responsive_layout.dart';
import '../../domin/entitis/my_courses.dart';

class MyCoursesBuildItemImageWiget extends StatelessWidget {
  const MyCoursesBuildItemImageWiget({
    super.key,
    required this.myCourses,
  });

  final MyCourses myCourses;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: double.infinity,
      height: ResponsiveDevices.isMobile(context) ? 170 : 230,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          myCourses.courseImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
