import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_build_curses_Item_widget.dart';

class FeaturedCoursesListViewWidget extends StatelessWidget {
  const FeaturedCoursesListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Center(
      child: Container(
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.03),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Center(
                child: CustomBuildCoursesItemWidget(
                  width: MediaQuery.of(context).size.width / 1.1,
                ),
              );
            }),
      ),
    ));
  }
}
