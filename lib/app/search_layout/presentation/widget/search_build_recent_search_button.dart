import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/responsive_layout/app_styles.dart';

class SearchBuildRecentSearchButton extends StatelessWidget {
  const SearchBuildRecentSearchButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomStart,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.05)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 16),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: SvgPicture.asset(
                  "assets/svg_icons/search/close.svg",
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
                  width: getResponsiveFontSize(context, fontSize: 20),
                  height: getResponsiveFontSize(context, fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
