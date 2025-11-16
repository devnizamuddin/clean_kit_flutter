import 'package:go_router/go_router.dart';

import '../../features/home/pages/home_page.dart';
import '../../features/home/pages/main_shell.dart';
import '../../features/login/bloc/auth_bloc.dart';
import '../../features/login/pages/login_page.dart';
import '../../features/profile/pages/profile_page.dart';
import 'auth_guard.dart';
import 'router_refresh_stream.dart';

class AppRouter {
  final AuthBloc authBloc;
  AppRouter(this.authBloc);

  late final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      // ShellRoute for persistent UI (Drawer)
      ShellRoute(
        builder: (context, state, child) => MainShell(child: child),
        routes: [
          GoRoute(
            path: '/home',
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) => const ProfilePage(),
          ),
          // Add /about, /settings here...
        ],
      ),
    ],

    // onException: (context, state, router) {
    //   Log.error(error: router);
    // },
    // Utility class to listen to a stream (like a Bloc's) for go_router refresh
    refreshListenable: GoRouterRefreshStream(authBloc.stream),

    // The redirect function uses the AuthBloc state
    // Add logic to listen to the Bloc state changes for the router to re-evaluate the redirection
    redirect: (context, goRouterState) => AuthGuard.redirect(
      context: context,
      state: goRouterState,
      authBloc: authBloc,
    ),
  );
}
