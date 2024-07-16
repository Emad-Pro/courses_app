import '../../../../../../core/import/app.dart';

class MyCoursesDeleteShowModelTitleSubtitleWidget extends StatelessWidget {
  const MyCoursesDeleteShowModelTitleSubtitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
            "Are You Sure Want \nto Delete this Course?",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 25),
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              children: [
                Text(
                  "You Stilll can redownload\n again without payment",
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
