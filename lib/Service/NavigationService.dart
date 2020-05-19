import 'package:flutter/cupertino.dart';

class NavigationService {
  final GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

  Future<dynamic> goTo(String routeName) {
    return globalKey.currentState.pushNamed(routeName);
  }

  Future<dynamic> permanentGoTo(String routeName) {
    return globalKey.currentState.pushReplacementNamed(routeName);
  }

  void goBack() {
    globalKey.currentState.pop();
  }
}
