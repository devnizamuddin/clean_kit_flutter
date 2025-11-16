part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {
  const AuthEvent();
}

final class AuthLoginRequested extends AuthEvent {
  final String email;
  final String password;
  final bool rememberMe;
  const AuthLoginRequested({required this.email, required this.password, this.rememberMe = false});
}

final class AuthAppStarted extends AuthEvent {}
