import 'package:flutter/material.dart';

import 'home_header_notifictions_and_settings_button_widget.dart';
import 'home_header_title_and_sub_title_widget.dart';

class HomeHeaderTitleAndSubTitleAndActionsWidget extends StatelessWidget {
  const HomeHeaderTitleAndSubTitleAndActionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 170,
          padding: const EdgeInsets.all(15),
          decoration:
              BoxDecoration(color: Theme.of(context).colorScheme.primary),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HomeHeaderTitleAndSubtitleWidget(),
              Spacer(),
              HomeHeaderNotifictonsAndSettingsButtonsWidget(),
            ],
          ),
        ),
        Container(
          height: 50,
        )
      ],
    );
  }
}
