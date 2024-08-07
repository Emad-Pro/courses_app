import '../../../../core/import/app.dart';

class ChatInputTextPrefixIconWidget extends StatelessWidget {
  const ChatInputTextPrefixIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: IconButton(
          onPressed: () {},
          icon: CustomSvgPictrue(
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
              imagePath: "assets/svg_icons/cateogry/photography.svg"),
        ),
      ),
    );
  }
}
