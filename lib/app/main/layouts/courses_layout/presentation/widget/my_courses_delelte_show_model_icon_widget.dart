import '../../../../../../core/import/app.dart';
import '../../../../../../core/widgets/avatar_glow.dart';

class MyCoursesDeleteShowModelIconWidget extends StatelessWidget {
  const MyCoursesDeleteShowModelIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: AvatarGlow(
          glowColor: Colors.red[200]!,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              "assets/svg_icons/main/trash.svg",
              width: 40,
              height: 40,
              colorFilter: const ColorFilter.mode(Colors.red, BlendMode.srcIn),
            ),
          )),
    );
  }
}
