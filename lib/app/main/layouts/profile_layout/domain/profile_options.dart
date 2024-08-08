import 'package:flutter/material.dart';

class ProfileOptions {
  final Widget? icon;
  final String title;
  final Widget? leading;

  final void Function()? onTap;
  ProfileOptions({
    this.icon,
    required this.title,
    this.leading,
    this.onTap,
  });
}
