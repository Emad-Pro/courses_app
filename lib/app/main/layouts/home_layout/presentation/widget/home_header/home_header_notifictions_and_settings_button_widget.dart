import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../screens/filter_screen.dart';

class HomeHeaderNotifictonsAndSettingsButtonsWidget extends StatelessWidget {
  const HomeHeaderNotifictonsAndSettingsButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/svg_icons/main/notifications.svg",
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.surface, BlendMode.srcIn),
              width: 25,
            )),
        IconButton(
          onPressed: () {
            showBottomSheet(
                enableDrag: true,
                showDragHandle: true,
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.sizeOf(context).height - 100),
                context: context,
                builder: (context) => FilterScreen());
          },
          icon: SvgPicture.asset(
            "assets/svg_icons/main/settings.svg",
            colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.surface, BlendMode.srcIn),
            width: 25,
          ),
        ),
      ],
    );
  }
}
