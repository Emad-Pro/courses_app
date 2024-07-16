import 'package:flutter/material.dart';

import '../responsive_layout/app_styles.dart';

class TitleAndSubtitleAuthenticationsWidget extends StatelessWidget {
  const TitleAndSubtitleAuthenticationsWidget(
      {super.key, required this.title, required this.subtitle, this.subtitle2});
  final String title;
  final String subtitle;
  final Widget? subtitle2;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 35),
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                children: [
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(context, fontSize: 18),
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.7)),
                  ),
                  subtitle2 ?? Container()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
