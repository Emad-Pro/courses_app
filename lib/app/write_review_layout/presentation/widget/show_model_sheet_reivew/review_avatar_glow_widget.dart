import '../../../../../core/import/app.dart';
import '../../../../../core/widgets/avatar_glow.dart';

class ReviewAvatarGlowWidget extends StatelessWidget {
  const ReviewAvatarGlowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: AvatarGlow(
          glowColor: Theme.of(context).colorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              "assets/svg_icons/auth/check_circle.svg",
              width: 40,
              height: 40,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          )),
    );
  }
}
