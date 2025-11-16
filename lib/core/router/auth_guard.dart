import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/login/bloc/auth_bloc.dart';
import '../utils/log.dart';

class AuthGuard {
  AuthGuard._private();

  static String? redirect({
    required BuildContext context,
    required GoRouterState state,
    required AuthBloc authBloc,
  }) {
    final authState = authBloc.state;
    final isLoggingIn = state.uri.path == '/login';
    Log.info(tag: 'AuthGuard', message: 'Route: ${state.uri.path} -> ${authState.runtimeType}');

    if (authState is AuthInitial || authState is AuthLoading) {
      // But DO NOT redirect the login page
      return isLoggingIn ? null : '/login';
    }

    if (authState is AuthUnauthenticated || authState is AuthError) {
      // If unauthenticated, redirect to login unless already there
      return isLoggingIn ? null : '/login';
    }

    if (authState is AuthAuthenticated && isLoggingIn) {
      // If authenticated, redirect away from login
      return '/';
    }

    // AuthInitial/AuthLoading: Allow waiting on the current page
    return null;
  }
}
