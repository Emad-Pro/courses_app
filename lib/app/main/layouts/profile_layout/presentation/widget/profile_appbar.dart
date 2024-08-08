import '../../../../../../core/import/app.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Theme.of(context).colorScheme.surface,
      centerTitle: true,
      title: const Text(
        "My Profile",
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
