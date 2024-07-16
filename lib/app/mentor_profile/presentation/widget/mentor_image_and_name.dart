import '../../../../core/import/app.dart';

class MentorImageAndName extends StatelessWidget {
  const MentorImageAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.primary)),
                padding: const EdgeInsets.all(5),
                child: const CircleAvatar(
                    radius: 45,
                    backgroundImage:
                        AssetImage("assets/images/fake_image2.jpg"))),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                "Johnson Mate",
                style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 22)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
