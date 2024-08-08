import 'package:bloc/bloc.dart';
import 'package:courses_app/app/main/layouts/profile_layout/domain/profile_options.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/theme/theme.dart';
import '../../../../../../../core/widgets/custom_svg_image.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState());

  toggleAppTheme(bool value) {
    ThemeService.changeDarkMode();
    emit(state.copyWith(darkMode: ThemeService.darkModeValue));
  }

  final List<ProfileOptions> options = [
    ProfileOptions(
        title: "Edit Profile",
        onTap: () {},
        icon: const CustomSvgWithColor(
            imagePath: "assets/svg_icons/profile/edit.svg"),
        leading: const CustomSvgWithColor(
            imagePath: "assets/svg_icons/courses_details/arrow_right.svg")),
    ProfileOptions(
        title: "Change Password",
        onTap: () {},
        icon: const CustomSvgWithColor(
            imagePath: "assets/svg_icons/auth/lock.svg"),
        leading: const CustomSvgWithColor(
            imagePath: "assets/svg_icons/courses_details/arrow_right.svg")),
    ProfileOptions(
        title: "Payment Method",
        onTap: () {},
        icon: const CustomSvgWithColor(
            imagePath: "assets/svg_icons/profile/edit.svg"),
        leading: const CustomSvgWithColor(
            imagePath: "assets/svg_icons/courses_details/arrow_right.svg")),
    ProfileOptions(
        title: "My Certificate",
        onTap: () {},
        icon: const CustomSvgWithColor(
            imagePath: "assets/svg_icons/profile/certificate.svg"),
        leading: const CustomSvgWithColor(
            imagePath: "assets/svg_icons/courses_details/arrow_right.svg")),
    ProfileOptions(
        title: "Dark Mode",
        icon: const CustomSvgWithColor(
            imagePath: "assets/svg_icons/profile/theme.svg"),
        leading: const CustomSvgWithColor(
            imagePath: "assets/svg_icons/courses_details/arrow_right.svg")),
    ProfileOptions(
        title: "Privacy Policy",
        onTap: () {},
        icon: const CustomSvgWithColor(
            imagePath: "assets/svg_icons/profile/prevacy.svg"),
        leading: const CustomSvgWithColor(
            imagePath: "assets/svg_icons/courses_details/arrow_right.svg")),
    ProfileOptions(
        title: "Terms & Conditions",
        onTap: () {},
        icon: const CustomSvgWithColor(
            imagePath: "assets/svg_icons/profile/note.svg"),
        leading: const CustomSvgWithColor(
            imagePath: "assets/svg_icons/courses_details/arrow_right.svg")),
  ];
}
