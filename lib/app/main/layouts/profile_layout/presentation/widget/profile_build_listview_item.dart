import 'package:courses_app/core/import/app.dart';
import 'package:flutter/material.dart';
import '../../domain/profile_options.dart';

import 'profile_change_theme.dart';

class ProfileBuildListViewItem extends StatelessWidget {
  const ProfileBuildListViewItem({
    super.key,
    required this.option,
  });
  final ProfileOptions option;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      leading: option.icon!,
      title: Text(option.title),
      trailing: option.onTap == null ? ProfileChangeTheme() : option.leading!,
      onTap: option.onTap,
    );
  }
}
