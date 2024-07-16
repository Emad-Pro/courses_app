import '../../../../../../core/import/app.dart';

class MentorAboutBuildSocialAppWidget extends StatelessWidget {
  const MentorAboutBuildSocialAppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: InkWell(
        onTap: () {},
        child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.2))),
            child: const Icon(Icons.face)),
      ),
    );
  }
}
