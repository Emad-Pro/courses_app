import '../../../../../core/import/app.dart';
import 'review_avatar_glow_widget.dart';
import 'review_done_button_widget.dart';
import 'review_title_and_subtitle_widget.dart';

class ReviewAddSuccessShowModalWidget extends StatelessWidget {
  const ReviewAddSuccessShowModalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
      child: Column(
        children: [
          ReviewAvatarGlowWidget(),
          ReviewTitleAndSubTitleWidget(),
          ReviewDoneButtonWidget()
        ],
      ),
    );
  }
}
