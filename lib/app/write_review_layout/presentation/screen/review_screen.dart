import 'package:courses_app/core/import/app.dart';

import '../controller/cubit/review_cubit.dart';
import '../widget/review_actions_button_widget.dart';
import '../widget/review_appbar.dart';
import '../widget/review_image_course_widget.dart';
import '../widget/review_instractor_details_widget.dart';
import '../widget/review_rating_widget.dart';
import '../widget/review_textformfiled_widget.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: BlocProvider(
        create: (context) => ReviewCubit(),
        child: BlocBuilder<ReviewCubit, ReviewState>(
          builder: (context, state) {
            return CustomScrollView(slivers: [
              const ReviewAppBar(),
              const ReviewImageCourseWidget(),
              const ReviewInstractorDetailsWidget(),
              const ReviewRatingWiget(),
              const ReviewTextFormFiledWidget(),
              ReviewActionsButtonWidget(
                checkValue: state.isWriteInFiled,
              )
            ]);
          },
        ),
      ),
    ));
  }
}
