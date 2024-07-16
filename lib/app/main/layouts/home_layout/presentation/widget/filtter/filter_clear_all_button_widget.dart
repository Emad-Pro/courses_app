import 'package:flutter/material.dart';

import '../../../../../../../core/responsive_layout/app_styles.dart';

class FilterClearAllButtonWidget extends StatelessWidget {
  const FilterClearAllButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 15),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              border: Border.all(
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.2)),
              color: Colors.transparent),
          child: Text(
            "Clear All",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 20),
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
    );
  }
}
