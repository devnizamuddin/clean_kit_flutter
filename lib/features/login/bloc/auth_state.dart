part of 'auth_bloc.dart';

@immutable
sealed class AuthState {
  const AuthState();
}

class AuthInitial extends AuthState {}

class AuthAuthenticated extends AuthState {
  final String userId;
  const AuthAuthenticated(this.userId);
}

class AuthUnauthenticated extends AuthState {}

class AuthLoading extends AuthState {}

class AuthError extends AuthState {
  final String message;
  const AuthError(this.message);
}
