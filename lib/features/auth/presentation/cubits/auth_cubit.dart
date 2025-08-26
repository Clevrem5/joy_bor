import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:joy_bor/features/auth/domain/usecases/login_usecase.dart';
import 'package:joy_bor/features/auth/domain/usecases/register_usecase.dart';
import 'package:joy_bor/features/auth/presentation/cubits/auth_state.dart';

import '../../../../core/failure/failure_model.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final LoginUseCase _loginUseCase;
  final RegisterUseCase _registerUseCase;

  AuthCubit(
    this._loginUseCase,
    this._registerUseCase,
  ) : super(const AuthState.initial());

  //login
  void login({
    required String email,
    required String password,
  }) async {
    emit(AuthState.loading());
    try {
      final request = await _loginUseCase.call(
        LoginParams(
          email: email,
          password: password,
        ),
      );
      emit(AuthState.success(request));
    } on FirebaseAuthException catch (e) {
      emit(
        AuthState.failure(
          Failure(message: e.message ?? ""),
        ),
      );
    } catch (e) {
      emit(
        AuthState.failure(
          Failure(message: e.toString()),
        ),
      );
    }
  }

  //register
  void register({
    required String email,
    required String password,
    required String name,
  }) async {

    try {
      emit(AuthState.loading());
      final request = await _registerUseCase.call(
        RegisterParams(
          email: email,
          password: password,
          name: name,
        ),
      );
      emit(AuthState.success(request));
    } on FirebaseAuthException catch (e) {
      emit(
        AuthState.failure(
          Failure(message: e.message ?? ""),
        ),
      );
    } catch (e) {
      emit(
        AuthState.failure(
          Failure(message: e.toString()),
        ),
      );
    }
  }
}
