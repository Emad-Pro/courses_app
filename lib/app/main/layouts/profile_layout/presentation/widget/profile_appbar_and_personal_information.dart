import '../../../../../../core/import/app.dart';
import 'profile_appbar.dart';
import 'profile_person_informations_widget.dart';

class ProfileAppBarAndPersonalInformation extends StatelessWidget {
  const ProfileAppBarAndPersonalInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ClipRRect(
        borderRadius: const BorderRadiusDirectional.only(
            bottomEnd: Radius.circular(20), bottomStart: Radius.circular(20)),
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: const Column(
            children: [
              ProfileAppBar(),
              ProfilePersonInformationsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
