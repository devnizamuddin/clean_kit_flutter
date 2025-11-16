import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_bloc_observer.dart';
import 'clean_kit_flutter.dart';
import 'mockup/mock_login_use_case.dart';

void main() {
  /*
   * ---> Initializes Flutter bindings.
   * Required before calling async or plugin code in main.
   */
  WidgetsFlutterBinding.ensureInitialized();

  /*
   * ---> Registers a global observer for bloc
   * Monitoring BLoC events, transitions, and errors.
   */
  Bloc.observer = AppBlocObserver();

  /*
   * ---> Creates a mock login use case
   * (used as a dependency for clean architecture layers). 
   */
  final mockUpUsecase = MockLoginUseCase();

  /*
   * ---> Starting Application 
   */
  runApp(
    CleanKitFlutter(loginUseCase: mockUpUsecase),
  );
}
