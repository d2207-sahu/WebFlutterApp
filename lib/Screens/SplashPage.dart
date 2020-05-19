import 'package:divyanshucompany/Constants/constants.dart';
import 'package:divyanshucompany/Service/NavigationService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Locator.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final navigation = locator<NavigationService>();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      navigation.goTo(homeRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0.0),
      child: Center(
        child: Icon(
          Icons.videocam,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
