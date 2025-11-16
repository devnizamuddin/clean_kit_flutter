import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'features/login/bloc/auth_bloc.dart';
import 'mockup/mock_login_use_case.dart';

class CleanKitFlutter extends StatelessWidget {
  final MockLoginUseCase loginUseCase;

  const CleanKitFlutter({
    super.key,
    required this.loginUseCase,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      //* Start event to check initial status
      create: (context) => AuthBloc(loginUseCase)..add(AuthAppStarted(),),
      child: Builder(
        builder: (context) {
          final router = AppRouter(context.read<AuthBloc>()).router;
          return MaterialApp.router(
            theme: AppTheme.lightData,
            routerConfig: router,
            builder: (context, child) {
              final authState = context.watch<AuthBloc>().state;

              if (authState is AuthInitial) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return child ?? Container();
            },
          );
        },
      ),
    );
  }
}
