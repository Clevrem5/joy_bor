import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_bor/core/constants/app_colors.dart';
import 'package:joy_bor/core/routes/app_router.dart';
import 'package:joy_bor/features/splash/presentation/cubit/splash_cubit.dart';

import 'core/di/di.dart';
import 'core/services/local_storage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await StorageRepository.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => BlocProvider(
        create: (context) => getIt<SplashCubit>()..init(),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Clevrem',
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.cx000206,
            textTheme: GoogleFonts.soraTextTheme(),
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
            ),
          ),
          routerConfig: AppRoutes.router,
        ),
      ),
    );
  }
}
