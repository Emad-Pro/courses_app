import '../../../../../../core/import/app.dart';

class ProfilePersonInformationsWidget extends StatelessWidget {
  const ProfilePersonInformationsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: const Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://i.stack.imgur.com/l60Hf.jpg',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Michelle Rivera',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.surface),
                ),
                //   const SizedBox(height: 8),
                Text(
                  'michelle.rivera@example.com',
                  style: TextStyle(
                    fontSize: 14,
                    color:
                        Theme.of(context).colorScheme.surface.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border:
                      Border.all(color: Theme.of(context).colorScheme.surface)),
              child: CustomSvgPictrue(
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.surface, BlendMode.srcIn),
                  imagePath: "assets/svg_icons/profile/edit.svg"),
            ),
          )
        ],
      ),
    );
  }
}
