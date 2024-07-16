import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoursesDetailsHeaderWidgets extends StatelessWidget {
  const CoursesDetailsHeaderWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: const ClipRRect(
              child: Image(
                image: AssetImage("assets/images/fake_image.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Theme.of(context).colorScheme.surface,
                    )),
                const Spacer(),
                SvgPicture.asset(
                  "assets/svg_icons/main/saved.svg",
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.surface, BlendMode.srcIn),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
