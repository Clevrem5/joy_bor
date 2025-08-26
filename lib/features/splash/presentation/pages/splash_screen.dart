import 'package:joy_bor/core/constants/exports.dart';
import 'package:joy_bor/features/auth/presentation/pages/login_page.dart';
import 'package:joy_bor/features/home/presentation/pages/home_screen.dart';

import '../cubit/splash_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashState>(
      builder: (context, state) {
        return state.when(
          loading: () => AppScaffold(
            child: Center(
              child: SvgPicture.asset(
                AppImages.logo,
              ),
            ),
          ),
          onboarding: () => OnboardingScreen(),
          main: () =>HomeScreen(),
          auth: () => LoginPage(),
        );
      },/*
      AppScaffold(
            child: Center(
              child: Text(
                "Home",
                style: AppStyles.w600s19white,
              ),
            ),
          ),*/
    );
  }
}
