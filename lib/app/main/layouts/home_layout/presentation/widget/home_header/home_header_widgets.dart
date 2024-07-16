import 'package:flutter/material.dart';

import 'home_header_scearch_textformfiled_widget.dart';
import 'home_header_title_and_subtitle_and_actions_widget.dart';

class HomeHeaderWidgets extends StatelessWidget {
  const HomeHeaderWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
        child: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        HomeHeaderTitleAndSubTitleAndActionsWidget(),
        HomeHeaderSearchTextFormFiledWidget()
      ],
    ));
  }
}
