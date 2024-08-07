import '../../../../../../core/import/app.dart';
import 'my_courses_delelte_show_model_actions_buttons_widgets.dart';
import 'my_courses_delelte_show_model_icon_widget.dart';
import 'my_courses_delelte_show_model_titile_subtitle_widget.dart';

class MyCoursesDeleteShowModel extends StatelessWidget {
  const MyCoursesDeleteShowModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsetsDirectional.all(10),
        width: double.infinity,
        child: const Column(children: [
          MyCoursesDeleteShowModelIconWidget(),
          MyCoursesDeleteShowModelTitleSubtitleWidget(),
          Spacer(),
          MyCoursesDeleteShowModelActionsButtonsWidgets()
        ]));
  }
}
