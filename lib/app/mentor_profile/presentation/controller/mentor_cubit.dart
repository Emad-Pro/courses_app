import 'package:bloc/bloc.dart';
import 'package:courses_app/app/mentor_profile/presentation/screens/pages_tabbar/mentor_about_page.dart';
import 'package:courses_app/app/mentor_profile/presentation/screens/pages_tabbar/mentor_cource_page.dart';
import 'package:courses_app/app/mentor_profile/presentation/screens/pages_tabbar/mentor_review_page.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'mentor_state.dart';

class MentorCubit extends Cubit<MentorState> {
  MentorCubit() : super(const MentorState());

  final List<String> infoButtonTabBar = ["About", "Course", "Review"];
  final List<Widget> infoPage = [
    const MentorAboutPage(),
    const MentorCourcePage(),
    const MentorReviewPage()
  ];
  changeTabbarPage(int index) {
    emit(state.copyWith(selectionTabIndex: index));
  }
}
