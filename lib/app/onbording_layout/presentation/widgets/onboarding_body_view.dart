import 'package:animated_introduction/animated_introduction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../authentication/login_layout/presentation/screens/login_screen.dart';
import '../controller/bloc/onboarding_bloc.dart';

class OnBoardingBodyView extends StatelessWidget {
  const OnBoardingBodyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingBloc(),
      child: BlocBuilder<OnBoardingBloc, OnBoardingState>(
        builder: (context, state) {
          final themeColor = Theme.of(context).colorScheme;
          return Scaffold(
            body: AnimatedIntroduction(
              isFullScreen: true,
              containerBg: themeColor.surface,
              footerBgColor: themeColor.primary,
              slides: context.read<OnBoardingBloc>().pages(context),
              indicatorType: IndicatorType.diamond,
              onDone: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
            ),
          );
        },
      ),
    );
  }
}
