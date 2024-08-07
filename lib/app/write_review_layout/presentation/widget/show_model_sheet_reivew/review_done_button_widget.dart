import '../../../../../core/import/app.dart';
import '../review_button_widget.dart';

class ReviewDoneButtonWidget extends StatelessWidget {
  const ReviewDoneButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ReviewButtonWidget(
          textColor: Colors.white,
          checkValue: true,
          title: "Done",
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}
