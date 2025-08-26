// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/domain/usecases/login_usecase.dart' as _i188;
import '../../features/auth/domain/usecases/register_usecase.dart' as _i941;
import '../../features/auth/presentation/cubits/auth_cubit.dart' as _i521;
import '../../features/splash/presentation/cubit/splash_cubit.dart' as _i125;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i125.SplashCubit>(() => _i125.SplashCubit());
    gh.lazySingleton<_i787.AuthRepository>(() => _i153.AuthRepositoryImpl());
    gh.factory<_i941.RegisterUseCase>(
      () => _i941.RegisterUseCase(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i188.LoginUseCase>(
      () => _i188.LoginUseCase(authRepository: gh<_i787.AuthRepository>()),
    );
    gh.factory<_i521.AuthCubit>(
      () => _i521.AuthCubit(
        gh<_i188.LoginUseCase>(),
        gh<_i941.RegisterUseCase>(),
      ),
    );
    return this;
  }
}
