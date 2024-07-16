import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/register_cubit.dart';
import '../widgets/register_action_buttons_widget.dart';
import '../widgets/register_image_widget.dart';
import '../widgets/register_textformfileds_widget.dart';
import '../widgets/register_title_and_sub_title_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => RegisterCubit(),
        child: const Padding(
          padding: EdgeInsets.all(15.0),
          child: CustomScrollView(
            slivers: [
              RegisterImageWidget(),
              RegisterTitleAndSubtitleWidget(),
              RegisterTextFormFiledsWidget(),
              RegisterActionsButtonsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
