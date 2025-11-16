import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  void printBlocLifecycle(String lifeCycle) {
    debugPrint(lifeCycle);
  }

  /*
   * ┏==================================================================================================┓
   * ┃                                         Life Cycle                                               ┃
   * ┗==================================================================================================┛
   */

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);

    printBlocLifecycle('\n');
    printBlocLifecycle(
      '[🆕 onCreate]===========================================================',
    );
    printBlocLifecycle(
      '------------------------------------------------------------------------',
    );
    printBlocLifecycle('🔷 Bloc     : ${bloc.runtimeType}');
    printBlocLifecycle(
      '------------------------------------------------------------------------',
    );
    printBlocLifecycle('🎯 State    :  ${bloc.state.runtimeType}');
    printBlocLifecycle(
      '------------------------------------------------------------------------',
    );
    printBlocLifecycle('🌀 Stream   :  ${bloc.stream.runtimeType}');
    printBlocLifecycle(
      '========================================================================',
    );
    printBlocLifecycle('\nspacing:');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    printBlocLifecycle('\n');
    printBlocLifecycle('🔚 [onClose] : ${bloc.runtimeType}');
    printBlocLifecycle('\n');
  }

  /*
   * ┏==================================================================================================┓
   * ┃                                          User Events                                             ┃
   * ┗==================================================================================================┛
   */

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    // printBlocLifecycle('🎯 Event : ${event.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    // printBlocLifecycle('🔄 ${change.currentState} → ${change.nextState}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    // printBlocLifecycle('❌ Error : ${error.runtimeType} → $stackTrace');
  }

  /*
   * ┏==================================================================================================┓
   * ┃                                       Bloc Transaction                                           ┃
   * ┗==================================================================================================┛
   */
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    printBlocLifecycle('\n');
    printBlocLifecycle(
      '[✨ onTransition]=======================================================',
    );
    printBlocLifecycle(
      '------------------------------------------------------------------------',
    );
    printBlocLifecycle('🔷 Bloc  :  ${bloc.runtimeType}');
    printBlocLifecycle(
      '------------------------------------------------------------------------',
    );
    printBlocLifecycle('🚀 Event :  ${transition.event.runtimeType}');
    printBlocLifecycle(
      '------------------------------------------------------------------------',
    );
    printBlocLifecycle(
      '🎯 State :  ${transition.currentState} ⫸ ${transition.nextState}',
    );
    printBlocLifecycle(
      '========================================================================',
    );
    printBlocLifecycle('\nspacing:');
  }
}
