import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../mockup/mock_login_use_case.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final MockLoginUseCase _loginUseCase;

  AuthBloc(this._loginUseCase) : super(AuthInitial()) {
    on<AuthAppStarted>(_onAppStarted);
    on<AuthLoginRequested>(_onLoginRequested);
  }
  Future<void> _onAppStarted(AuthAppStarted event, Emitter<AuthState> emit) async {
    // Simulate checking for a stored token
    await Future<void>.delayed(const Duration(milliseconds: 500));
    // For this demo, we assume the user is initially unauthenticated
    // emit(AuthAuthenticated('devnizam'));
    emit(AuthUnauthenticated());
  }

  Future<void> _onLoginRequested(AuthLoginRequested event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      final userMap = await _loginUseCase.execute(
        email: event.email,
        password: event.password,
        rememberMe: event.rememberMe,
      );
      emit(AuthAuthenticated(userMap['id']!));
    } catch (e) {
      emit(AuthError(e.toString().split(':').last.trim()));
    }
  }
}
