import 'package:bloc/bloc.dart';
import 'package:courses_app/app/main/layouts/courses_layout/presentation/screens/courses_screen.dart';
import 'package:courses_app/app/main/layouts/home_layout/presentation/screens/home_screen.dart';
import 'package:courses_app/app/main/layouts/message_layout/presentation/screens/message_screen.dart';
import 'package:courses_app/app/main/layouts/profile_layout/presentation/screens/profile_screen.dart';
import 'package:courses_app/app/main/layouts/saved_layout/presentation/screens/saved_screen.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../widget/custom_svg_pictrue.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState());
  List<BottomNavigationBarItem> bottomNavigationBar(context) {
    final color = Theme.of(context).colorScheme;
    final colorFilter = ColorFilter.mode(color.primary, BlendMode.srcIn);
    final colorFilterActive =
        ColorFilter.mode(color.onSurface, BlendMode.srcIn);
    return [
      BottomNavigationBarItem(
          icon: CustomSvgPictrue(
            colorFilter: colorFilterActive,
            imagePath: "assets/svg_icons/main/home.svg",
          ),
          activeIcon: CustomSvgPictrue(
              colorFilter: colorFilter,
              imagePath: "assets/svg_icons/main/home.svg"),
          label: "Home"),
      BottomNavigationBarItem(
          icon: CustomSvgPictrue(
            colorFilter: colorFilterActive,
            imagePath: "assets/svg_icons/main/saved.svg",
          ),
          activeIcon: CustomSvgPictrue(
              colorFilter: colorFilter,
              imagePath: "assets/svg_icons/main/saved.svg"),
          label: "Saved"),
      BottomNavigationBarItem(
          icon: CustomSvgPictrue(
            colorFilter: colorFilterActive,
            imagePath: "assets/svg_icons/main/courses.svg",
          ),
          activeIcon: CustomSvgPictrue(
              colorFilter: colorFilter,
              imagePath: "assets/svg_icons/main/courses.svg"),
          label: "Cources"),
      BottomNavigationBarItem(
          icon: CustomSvgPictrue(
            colorFilter: colorFilterActive,
            imagePath: "assets/svg_icons/main/message.svg",
          ),
          activeIcon: CustomSvgPictrue(
              colorFilter: colorFilter,
              imagePath: "assets/svg_icons/main/message.svg"),
          label: "Maessage"),
      BottomNavigationBarItem(
          icon: CustomSvgPictrue(
            colorFilter: colorFilterActive,
            imagePath: "assets/svg_icons/main/profile.svg",
          ),
          activeIcon: CustomSvgPictrue(
              colorFilter: colorFilter,
              imagePath: "assets/svg_icons/main/profile.svg"),
          label: "Prfile"),
    ];
  }

  List<Widget> bottomNavigationBarScreens = [
    const HomeScreen(),
    const SavedScreen(),
    const CoursesScreen(),
    const MessageScreen(),
    const ProfileScreen()
  ];
  chacgeCurrentIndex(int index) {
    emit(state.copyWith(currentIndexButtomNavigationBar: index));
  }
}
