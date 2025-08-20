

import 'package:joy_bor/core/constants/exports.dart';


abstract class AppRoutes {
  static final String init = "/";

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: init,
        builder: (context, state) => SplashScreen(),
      ),
    ],
  );
}
