import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectOtpContact extends Equatable {
  final String labelName;
  final String svgPath;
  final TextEditingController? controller;
  final Function()? onTap;

  const SelectOtpContact(
      {required this.labelName,
      required this.svgPath,
      this.controller,
      this.onTap});

  @override
  List<Object?> get props => [labelName, svgPath, controller, onTap];
}
