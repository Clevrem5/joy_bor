import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:joy_bor/core/usecase/use_case.dart';
import 'package:joy_bor/features/auth/domain/repositories/auth_repository.dart';

@injectable
class RegisterUseCase implements UseCase<UserCredential, RegisterParams> {
  final AuthRepository _authRepository;

  RegisterUseCase(this._authRepository);

  @override
  Future<UserCredential> call(RegisterParams params) {
    return _authRepository.register(
      email: params.email,
      password: params.password,
      name: params.name,
    );
  }
}

class RegisterParams {
  final String email;
  final String password;
  final String name;

  RegisterParams({
    required this.email,
    required this.password,
    required this.name,
  });
}
