import 'package:flutter/material.dart';

import '../../../../core/responsive_layout/app_styles.dart';
import '../../../../core/responsive_layout/responsive_layout.dart';
import '../../../../core/widgets/custom_category_item.dart';

class SearchByCategoryGridViewWidget extends StatelessWidget {
  const SearchByCategoryGridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Search By Category",
              style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 18),
                fontWeight: FontWeight.bold,
              ),
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
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {}, child: const CustomCategoryItem());
                })
          ],
        ),
      ),
    );
  }
}
