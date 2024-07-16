import 'package:flutter/material.dart';

import '../../../../core/responsive_layout/app_styles.dart';

class CategoryFinshButtonWidget extends StatelessWidget {
  const CategoryFinshButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      fillOverscroll: false,
      child: Column(
        children: [
          const Spacer(),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(5),
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  "Finsh",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontSize: getResponsiveFontSize(context, fontSize: 18),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
