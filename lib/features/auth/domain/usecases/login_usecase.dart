import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:joy_bor/features/auth/domain/repositories/auth_repository.dart';

import '../../../../core/usecase/use_case.dart';

@injectable
class LoginUseCase implements UseCase<UserCredential, LoginParams> {
  final AuthRepository _authRepository;

  LoginUseCase({required AuthRepository authRepository}) : _authRepository = authRepository;

  @override
  Future<UserCredential> call(LoginParams params) {
    return _authRepository.login(email: params.email, password: params.password);
  }
}

class LoginParams {
  final String email;
  final String password;

  LoginParams({required this.email, required this.password});
}
