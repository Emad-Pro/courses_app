import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Onboarding extends Equatable {
  final Widget imagePath;
  final String title;
  final String subTitle;

  const Onboarding(
      {required this.imagePath, required this.title, required this.subTitle});

  @override
  List<Object?> get props => [imagePath, title, subTitle];
}
