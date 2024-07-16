import '../../../../core/import/app.dart';
import '../screens/pages_tabbar/widgets/mentor_profile_build_info_item.dart';

class MentorTotalInfoView extends StatelessWidget {
  const MentorTotalInfoView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const MentorProfileBuildInfoItem(
            count: 10,
            text: 'Courses',
          ),
          Container(
            height: 60.0,
            width: 0.5,
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          ),
          const MentorProfileBuildInfoItem(
            count: 100,
            text: 'Favourite',
          ),
          Container(
            height: 60.0,
            width: 0.5,
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          ),
          const MentorProfileBuildInfoItem(
            count: 89,
            text: 'Reviews',
          ),
        ],
      ),
    );
  }
}
