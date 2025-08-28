import 'dart:developer';

import '../constants/exports.dart';

class AppBlocServer extends BlocObserver {
  const AppBlocServer();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log("OnChange(${bloc.runtimeType}, change:$change)");
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log("OnError(${bloc.runtimeType}, error:$error, stackTrace:$stackTrace)");
    super.onError(bloc, error, stackTrace);
  }
}
