import 'package:courses_app/core/import/app.dart';

class FilterAppbarWidget extends StatelessWidget {
  const FilterAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Row(
          children: [
            Text(
              "Filter",
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 22),
                  fontWeight: FontWeight.w700),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                "assets/svg_icons/search/close.svg",
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
                width: 20,
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
