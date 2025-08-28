import 'package:joy_bor/core/constants/exports.dart';
import 'package:joy_bor/features/auth/presentation/pages/login_page.dart';
import 'package:joy_bor/features/main/presentation/pages/main_page.dart';

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
          main: () => MainPage(),
          auth: () => LoginPage(),
        );
      },
    );
  }
}
