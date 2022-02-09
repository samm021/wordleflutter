import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:wordleflutter/app.dart';
import 'package:wordleflutter/blocs/bloc_observer.dart';

void main() {
  Bloc.observer = MainBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(const App()),
    (e, stackTrace) => log(e.toString(), stackTrace: stackTrace),
  );
}
