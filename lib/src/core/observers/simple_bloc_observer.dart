import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    debugPrint('${bloc.toString()} Created');
    super.onCreate(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint(event.toString());
    super.onEvent(bloc, event);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint(stackTrace.toString());
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint(change.toString());
    super.onChange(bloc, change);
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('${bloc.toString()} Closed');
    super.onClose(bloc);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint(transition.toString());
    super.onTransition(bloc, transition);
  }
}
