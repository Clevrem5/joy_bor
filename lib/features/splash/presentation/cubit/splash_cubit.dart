import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:joy_bor/features/splash/presentation/cubit/splash_state.dart';

import '../../../../core/constants/app_storege_keys.dart';
import '../../../../core/constants/exports.dart';

@Injectable()
class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.loading());

  Future<void> init() async {
    emit(const SplashState.loading());
    await Future.delayed(const Duration(seconds: 2));

    final isOnboarding = StorageRepository.getBool(keyOfValue: AppKeys.onboarding);
    if (!isOnboarding) {
      emit(const SplashState.onboarding());
      return;
    }

    final user = FirebaseAuth.instance.currentUser;
    emit(user == null ? const SplashState.auth() : const SplashState.main());
  }

  void completeOnboarding() {
    StorageRepository.setBool(key: AppKeys.onboarding, value: true);
    emit(const SplashState.auth());
  }

  void goToMain() {
    emit(const SplashState.main());
  }
}
