import 'package:courses_app/app/main/layouts/courses_layout/presentation/controller/cubit/my_courses_cubit.dart';

import '../../../../../../core/import/app.dart';

import '../widget/my_courses_build_listview_item.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyCoursesCubit(),
      child: BlocBuilder<MyCoursesCubit, MyCoursesState>(
        builder: (context, state) {
          final isDark = Theme.of(context).brightness == Brightness.dark;
          return Container(
            color: isDark
                ? null
                : Theme.of(context).colorScheme.onSurface.withOpacity(0.07),
            child: CustomScrollView(
              slivers: [
                const SliverAppBar(
                  title: Text("My Courses"),
                  centerTitle: true,
                  pinned: true,
                  stretchTriggerOffset: 50,
                ),
                SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  sliver: SliverToBoxAdapter(
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount:
                            context.read<MyCoursesCubit>().testCourses.length,
                        shrinkWrap: true,
                        itemBuilder: (ctx, i) {
                          return MyCoursesBuildListViewItem(index: i);
                        }),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
