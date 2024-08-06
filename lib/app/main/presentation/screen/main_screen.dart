import 'package:courses_app/app/main/presentation/controller/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        final mainCubit = context.read<MainCubit>();
        return Scaffold(
          body: mainCubit.bottomNavigationBarScreens[
              state.currentIndexButtomNavigationBar],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Theme.of(context).colorScheme.primary,
            items: mainCubit.bottomNavigationBar(
              context,
            ),
            currentIndex: state.currentIndexButtomNavigationBar,
            onTap: (index) {
              mainCubit.chacgeCurrentIndex(index);
            },
          ),
        );
      },
    );
  }
}
