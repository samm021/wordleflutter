import 'package:flutter/material.dart';

class MainNavigator {
  final key = GlobalKey<NavigatorState>();

  NavigatorState? get state => key.currentState;

  BuildContext get context => state!.context;
}
