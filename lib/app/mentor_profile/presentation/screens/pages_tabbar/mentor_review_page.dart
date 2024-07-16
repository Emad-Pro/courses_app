import '../../../../../core/import/app.dart';

import 'widgets/mentor_build_review_item.dart';

class MentorReviewPage extends StatelessWidget {
  const MentorReviewPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 2,
      child: ListView.separated(
          itemCount: 12,
          shrinkWrap: true,
          separatorBuilder: (ctx, i) {
            return const SizedBox(
              height: 25,
            );
          },
          itemBuilder: (ctx, i) {
            return const MentorBuildReviewItem();
          }),
    );
  }
}
