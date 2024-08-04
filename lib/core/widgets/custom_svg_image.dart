import 'package:courses_app/core/import/app.dart';

class CustomSvgImage extends StatelessWidget {
  const CustomSvgImage({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagePath,
      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
    );
  }
}