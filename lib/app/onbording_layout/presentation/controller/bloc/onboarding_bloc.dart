import 'package:animated_introduction/animated_introduction.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(const OnBoardingState());
  List<SingleIntroScreen> pages(context) => [
        SingleIntroScreen(
          headerBgColor: Theme.of(context).colorScheme.surface,
          title: 'Welcome to the Event Management App !',
          description:
              'You plans your Events, We\'ll do the rest and will be the best! Guaranteed!  ',
          imageAsset: 'assets/images/onboarding/Untitled-1.png',
        ),
        SingleIntroScreen(
          headerBgColor: Theme.of(context).colorScheme.surface,
          title: 'Book tickets to cricket matches and events',
          description:
              'Tickets to the latest movies, crickets matches, concerts, comedy shows, plus lots more !',
          imageAsset: 'assets/images/onboarding/Untitled-2.png',
        ),
        SingleIntroScreen(
          headerBgColor: Theme.of(context).colorScheme.surface,
          title: 'Grabs all events now only in your hands',
          description: 'All events are now in your hands, just a click away ! ',
          imageAsset: 'assets/images/onboarding/Untitled-3.png',
        ),
      ];
}
