import 'package:courses_app/core/import/app.dart';

class ReviewTitleAndSubTitleWidget extends StatelessWidget {
  const ReviewTitleAndSubTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
            "Thanks For Your\n Feedback",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 30),
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              children: [
                Text(
                  "Your feedback meabs a lot for the rating and improvement for our course",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: getResponsiveFontSize(context, fontSize: 18),
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.7)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
