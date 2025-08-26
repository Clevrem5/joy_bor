import 'package:joy_bor/core/constants/exports.dart';
import 'package:joy_bor/features/auth/presentation/pages/login_page.dart';
import 'package:joy_bor/features/auth/presentation/pages/sign_up_page.dart';
import 'package:joy_bor/features/home/presentation/pages/home_screen.dart';

abstract class AppRoutes {
  static final String init = "/";
  static final String signUp = "/signUp";
  static final String login = "/login";
  static final String main = "/main";

  static final GoRouter router = GoRouter(
    initialLocation: init,
    routes: [
      GoRoute(
        path: init,
        builder: (context, state) => SplashScreen(),
      ),

      GoRoute(
        path: signUp,
        builder: (context, state) => SignUpPage(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: main,
        builder: (context, state) => HomeScreen(),
      ),
    ],
  );
}
