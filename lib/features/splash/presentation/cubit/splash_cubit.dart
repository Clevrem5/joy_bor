import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:joy_bor/core/services/local_storage.dart';
import 'package:joy_bor/features/splash/presentation/cubit/splash_state.dart';

import '../../../../core/constants/app_storege_keys.dart';

@Injectable()
class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.loading());
  final isOnboarding = StorageRepository.getBool(keyOfValue: AppKeys.onboarding);

  void init() async {
    emit(SplashState.loading());
    await Future.delayed(Duration(seconds: 3));
    if (!isOnboarding) {
      emit(SplashState.onboarding());
    } else {}
  }
}
