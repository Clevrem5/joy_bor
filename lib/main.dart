import 'package:joy_bor/core/app_bloc_observer.dart';
import 'package:joy_bor/features/auth/presentation/cubits/auth_cubit.dart';

import 'core/constants/exports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  Bloc.observer=AppBlocServer();
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
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<SplashCubit>()..init()),
          BlocProvider(create: (context) => getIt<AuthCubit>()),
        ],

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
