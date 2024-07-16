import '../../../../../../core/import/app.dart';
import '../../domin/entitis/my_courses.dart';
import '../controller/cubit/my_courses_cubit.dart';

class MyCoursesBuildItemLinerInicatorAndProgressWidget extends StatelessWidget {
  const MyCoursesBuildItemLinerInicatorAndProgressWidget({
    super.key,
    required this.myCourses,
    required this.myCoursesCubit,
  });

  final MyCourses myCourses;
  final MyCoursesCubit myCoursesCubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
                "${myCourses.progressLessons}/${myCourses.totalLessons} Lessons"),
            const Spacer(),
            Text(
                "${myCoursesCubit.calculatePercentage(myCourses.totalLessons.toDouble(), myCourses.progressLessons.toDouble()).round()}%"),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: LinearProgressIndicator(
            value: myCoursesCubit.calculatePercentageDesmail(
                myCourses.totalLessons.toDouble(),
                myCourses.progressLessons.toDouble()),
          ),
        ),
      ],
    );
  }
}
