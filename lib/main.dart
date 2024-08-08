import 'dart:io';

import 'package:courses_app/app/main/layouts/home_layout/presentation/controller/home_cubit.dart';
import 'package:courses_app/app/main/layouts/profile_layout/presentation/controller/cubit/profile_cubit.dart';
import 'package:courses_app/app/main/presentation/controller/main_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/main/presentation/screen/main_screen.dart';
import 'core/get_It/service_locator.dart';
import 'core/sharedPreferences/cache_helper.dart';
import 'core/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  ServiceLacator().init();
  await CacheHelper.init();
  await ThemeService.themeInit();
  runApp(DevicePreview(builder: (context) => const MyApp()));
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        BlocProvider(
          create: (context) => getIt<ProfileCubit>(),
        ),
      ],
      child: Builder(builder: (context) {
        final profileCubit = context.watch<ProfileCubit>();
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Courses App',
          darkTheme: ThemeData.dark(useMaterial3: true)
              .copyWith(brightness: Brightness.dark),
          themeMode:
              ThemeService.darkModeValue ? ThemeMode.dark : ThemeMode.light,
          theme: ThemeData.light(useMaterial3: true)
              .copyWith(brightness: Brightness.light),
          home: const MainScreen(),
        );
      }),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
