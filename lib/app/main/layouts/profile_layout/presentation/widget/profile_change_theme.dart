import '../../../../../../core/import/app.dart';
import '../../../../../../core/theme/theme.dart';
import '../controller/cubit/profile_cubit.dart';

class ProfileChangeTheme extends StatelessWidget {
  const ProfileChangeTheme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final profileCubit = context.read<ProfileCubit>();
    return Switch(
        value: ThemeService.darkModeValue,
        onChanged: (val) {
          profileCubit.toggleAppTheme(val);
        });
  }
}
