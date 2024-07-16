import '../../../../core/import/app.dart';
import '../controller/mentor_cubit.dart';

import 'mentor_profile_tabbar_build_item.dart';

class MentorDetailsInfoPages extends StatelessWidget {
  const MentorDetailsInfoPages({super.key, required this.state});
  final MentorState state;
  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      fillOverscroll: false,
      child: Column(
        children: [
          SizedBox(
            height: 70,
            width: double.infinity,
            child: Center(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: context.read<MentorCubit>().infoButtonTabBar.length,
                separatorBuilder: (contex, index) {
                  return SizedBox(
                    width: MediaQuery.sizeOf(context).width / 9,
                  );
                },
                itemBuilder: (context, index) {
                  return MentorProfileTabbarBuilItem(
                    mentorState: state,
                    index: index,
                    title: context.read<MentorCubit>().infoButtonTabBar[index],
                  );
                },
              ),
            ),
          ),
          context.read<MentorCubit>().infoPage[state.selectionTabIndex]
        ],
      ),
    );
  }
}
