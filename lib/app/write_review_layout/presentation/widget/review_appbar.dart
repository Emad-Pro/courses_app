import '../../../../core/import/app.dart';

class ReviewAppBar extends StatelessWidget {
  const ReviewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: CustomSvgPictrue(
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
              imagePath: "assets/svg_icons/courses_details/arrow_left.svg")),
      centerTitle: true,
      title: const Text("Reviews"),
    );
  }
}
