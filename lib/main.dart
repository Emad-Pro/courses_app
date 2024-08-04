import 'package:courses_app/app/main/layouts/home_layout/presentation/controller/home_cubit.dart';
import 'package:courses_app/app/main/presentation/controller/main_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/main/presentation/screen/main_screen.dart';
import 'core/get_It/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLacator().init();
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MainCubit(),
        ),
        BlocProvider(
          create: (context) => getIt<HomeCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Courses App',
        darkTheme: ThemeData.dark(useMaterial3: true)
            .copyWith(brightness: Brightness.dark),
        themeMode: ThemeMode.dark,
        theme: ThemeData.light(useMaterial3: true)
            .copyWith(brightness: Brightness.light),
        home: const MainScreen(),
      ),
    );
  }
}
