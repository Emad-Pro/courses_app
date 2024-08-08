import '../../../../../../core/import/app.dart';
import '../controller/cubit/profile_cubit.dart';
import 'profile_build_listview_item.dart';

class ProfileListViewOptions extends StatelessWidget {
  const ProfileListViewOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final profileCubit = context.read<ProfileCubit>();
    return SliverPadding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      sliver: SliverList.builder(
          itemCount: profileCubit.options.length,
          itemBuilder: (ctx, i) {
            return ProfileBuildListViewItem(option: profileCubit.options[i]);
          }),
    );
  }
}
