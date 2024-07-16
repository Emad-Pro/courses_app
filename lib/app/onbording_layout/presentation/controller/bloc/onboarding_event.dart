part of 'onboarding_bloc.dart';

class OnBoardingEvent extends Equatable {
  const OnBoardingEvent();

  @override
  List<Object> get props => [];
}

class ChangeIndexBoardingEvent extends OnBoardingEvent {}

class SkipIndexBoardingEvent extends OnBoardingEvent {}
