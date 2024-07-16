import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgPictrue extends StatelessWidget {
  const CustomSvgPictrue(
      {super.key, required this.colorFilter, required this.imagePath});

  final ColorFilter colorFilter;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagePath,
      colorFilter: colorFilter,
    );
  }
}
