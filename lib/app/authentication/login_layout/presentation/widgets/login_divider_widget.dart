import 'package:flutter/material.dart';

import '../../../../../core/responsive_layout/app_styles.dart';

class LoginDividerWidget extends StatelessWidget {
  const LoginDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Divider(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Or login with",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: getResponsiveFontSize(context, fontSize: 20)),
              ),
            ),
            Expanded(
              child: Divider(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
