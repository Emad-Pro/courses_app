import '../../../../../core/import/app.dart';

import 'widgets/mentor_about_build_social_app_widget.dart';

class MentorAboutPage extends StatelessWidget {
  const MentorAboutPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 18)),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Social Media",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) {
                  return const MentorAboutBuildSocialAppWidget();
                }),
          )
        ],
      ),
    );
  }
}
