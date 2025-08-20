import 'package:joy_bor/core/constants/exports.dart';
import '../cubit/splash_cubit.dart';
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
          main: () => SizedBox(),
          auth: () => SizedBox(),
        );
      },
    );
  }
}
