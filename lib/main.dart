import 'package:divyanshucompany/Constants/constants.dart';
import 'package:divyanshucompany/Locator.dart';
import 'package:divyanshucompany/Service/NavigationService.dart';
import 'package:flutter/material.dart';

import 'Navigation.dart';

void main() {
  SetupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      onGenerateRoute: Router.onGenerateRoute,
      navigatorKey: locator<NavigationService>().globalKey,
      initialRoute: initialRoute,
      theme: ThemeData(
        accentColor: Colors.black,
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.black,
        dialogBackgroundColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
