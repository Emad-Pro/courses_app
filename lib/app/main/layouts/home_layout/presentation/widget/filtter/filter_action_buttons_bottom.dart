import 'package:flutter/material.dart';

import '../../../../../../../core/widgets/custom_auth_button_widget.dart';
import 'filter_clear_all_button_widget.dart';

class FilterActionButtonsBottom extends StatelessWidget {
  const FilterActionButtonsBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
        fillOverscroll: false,
        hasScrollBody: false,
        child: Column(
          children: [
            const Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Expanded(child: FilterClearAllButtonWidget()),
                  Expanded(
                    child: CustomAuthButtonWidget(
                      stateValue: true,
                      title: "Apply",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
