import 'package:courses_app/core/import/app.dart';

class ChatOnSendButtonWidget extends StatelessWidget {
  const ChatOnSendButtonWidget({super.key, required this.send});
  final void Function() send;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: send,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(5)),
        child: CustomSvgPictrue(
            colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.surface, BlendMode.srcIn),
            imagePath: "assets/svg_icons/chat/plain.svg"),
      ),
    );
  }
}
