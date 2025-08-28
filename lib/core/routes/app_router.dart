import 'package:joy_bor/core/constants/exports.dart';

abstract class AppRoutes {
  static final String init = "/";
  static final String signUp = "/signUp";
  static final String login = "/login";
  static final String main = "/main";
  static final String terms = "/terms";

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
        builder: (context, state) => MainPage(),
      ),

      GoRoute(
        path: terms,
        builder: (context, state) => TermsPage(),
      ),
    ],
  );
}
