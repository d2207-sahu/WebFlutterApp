import 'package:divyanshucompany/Screens/HomePage.dart';
import 'package:divyanshucompany/Screens/HomeScreen.dart';
import 'package:divyanshucompany/Screens/JoinUsPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constants/constants.dart';
import 'Screens/SplashPage.dart';

class Router {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => SplashPage());
      case joinUsRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => JoinUsPage());
      case homeRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (context) => ErrorPage());
    }
  }
}

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text('Error'),
    ));
  }
}
