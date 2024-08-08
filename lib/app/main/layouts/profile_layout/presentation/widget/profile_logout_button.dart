import '../../../../../../core/import/app.dart';

class ProfileLogoutButton extends StatelessWidget {
  const ProfileLogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 7),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSvgPictrue(
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.surface, BlendMode.srcIn),
                    imagePath: "assets/svg_icons/profile/Logout.svg"),
                const SizedBox(width: 8),
                Text(
                  "Logout",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.surface),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
