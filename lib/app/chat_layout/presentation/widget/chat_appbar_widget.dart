import 'package:courses_app/core/import/app.dart';

class ChatAppBarWidget extends StatelessWidget {
  const ChatAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return SliverAppBar(
      pinned: true,
      automaticallyImplyLeading: false,
      actions: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: IconButton(
            onPressed: () {},
            icon: CustomSvgPictrue(
                colorFilter: ColorFilter.mode(theme.onSurface, BlendMode.srcIn),
                imagePath: "assets/svg_icons/chat/meue.svg"),
          ),
        ),
      ],
      title: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: CustomSvgPictrue(
                colorFilter: ColorFilter.mode(theme.onSurface, BlendMode.srcIn),
                imagePath: "assets/svg_icons/courses_details/arrow_left.svg"),
          ),
          const SizedBox(
            width: 10,
          ),
          const CircleAvatar(
            radius: 18,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            "Cody Fisher",
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 18)),
          )
        ],
      ),
    );
  }
}
