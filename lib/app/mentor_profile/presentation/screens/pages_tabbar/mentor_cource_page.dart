import '../../../../../core/import/app.dart';

import 'widgets/mentor_build_cource_item.dart';

class MentorCourcePage extends StatelessWidget {
  const MentorCourcePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 2,
      child: ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: (ctx, i) {
            return const MentorBuildCourceItem();
          }),
    );
  }
}
