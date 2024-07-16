import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/responsive_layout/app_styles.dart';
import '../../../mentor_profile/presentation/screens/mentor_profile_screen.dart';

class CoursesDetailsInfoTeatcherWidget extends StatelessWidget {
  const CoursesDetailsInfoTeatcherWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MentorProfileScreen()));
              },
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/fake_image2.jpg'),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Johnson Mate',
                          style: TextStyle(
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 18),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Lead Designer',
                          style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withOpacity(0.7)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(11),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SvgPicture.asset(
                "assets/svg_icons/main/message.svg",
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.surface, BlendMode.srcIn),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
