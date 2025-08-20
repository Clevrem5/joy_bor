import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
 class SplashState with _$SplashState {
  const factory SplashState.loading() = _Loading;
  const factory SplashState.onboarding() = _Onboarding;
  const factory SplashState.main() = _Main;
  const factory SplashState.auth() =_Auth;
}
