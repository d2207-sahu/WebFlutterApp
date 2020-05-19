import 'package:divyanshucompany/Constants/constants.dart';
import 'package:divyanshucompany/Service/NavigationService.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Locator.dart';

class HomePageJoinUs extends StatelessWidget {
  final _navigator = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Center(
              child: Text(
            "We're Hiring.",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              onPressed: () {
                _navigator.goTo(joinUsRoute);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                decoration: BoxDecoration(
//                                  color: Colors.white,
                    border: Border.all(color: Colors.black, width: 10)),
                child: Center(
                  child: Text(
                    'Join Us',
                    style: GoogleFonts.baloo(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
