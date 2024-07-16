import 'package:flutter/material.dart';

import '../../../../../../../core/responsive_layout/responsive_layout.dart';
import '../custom_row_title_and_see_all_widget.dart';
import '../../../../../../../core/widgets/custom_category_item.dart';

class HomeBodyExploreCategoryGridViewWidget extends StatelessWidget {
  const HomeBodyExploreCategoryGridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
        child: Column(
          children: [
            CustomRowTitleAndSeeAllWidgets(
              titleText: "Explore Category",
              onTap: () {},
            ),
            GridView.builder(
                itemCount: 4,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  crossAxisCount: ResponsiveDevices.isTablet(context) ? 4 : 2,
                  mainAxisExtent:
                      ResponsiveDevices.isTablet(context) ? 100 : 50,
                ),
                itemBuilder: (context, index) => const CustomCategoryItem())
          ],
        ),
      ),
    );
  }
}
