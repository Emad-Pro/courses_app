import '../../../../core/import/app.dart';

class MentorAppbar extends StatelessWidget {
  const MentorAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text("Mentor profile"),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/svg_icons/courses_details/arrow_left.svg",
            colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
            width: 25,
          ),
        ),
      ),
    );
  }
}
