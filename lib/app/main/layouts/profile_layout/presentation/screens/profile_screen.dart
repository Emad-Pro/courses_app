import 'package:courses_app/app/main/layouts/profile_layout/presentation/controller/cubit/profile_cubit.dart';
import '../../../../../../core/import/app.dart';
import '../widget/profile_appbar_and_personal_information.dart';
import '../widget/profile_listview_options.dart';
import '../widget/profile_logout_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return const CustomScrollView(
          slivers: [
            ProfileAppBarAndPersonalInformation(),
            ProfileListViewOptions(),
            ProfileLogoutButton()
          ],
        );
      },
    );
  }
}
