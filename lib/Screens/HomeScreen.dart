import 'dart:ui';
import 'package:divyanshucompany/Constants/constants.dart';
import 'package:divyanshucompany/Service/NavigationService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Locator.dart';
import 'Widgets/BottomSheetPage.dart';
import 'Widgets/ContactUsPage.dart';
import 'Widgets/CustomDrawer.dart';
import 'Widgets/FloatingActionButton.dart';
import 'Widgets/HomePageJoinUs.dart';
import 'Widgets/InterestedPeopleFillInFormPage.dart';
import 'Widgets/NavigationBar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  double topOne = 0;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

//  onNotification: (v) {
//          if (v is ScrollUpdateNotification) {
//            setState(() {
//              topOne = topOne + v.scrollDelta / 2;
////              print('topOne: $topOne');
////              print(_scrollController.offset);
//            });
//          }
//          return null;
//        },
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: CustomDrawer(_scrollController),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Stack(children: [
          BackGroundPage(),
          SingleChildScrollView(
            controller: _scrollController,
            child: Opacity(
              opacity: 0.9,
              child: Column(
                children: [
                  LandingPage(_scaffoldKey),
                  FormFillInInterestInStartup(topOne),
                  HomePageJoinUs(),
                  ContactUsPage(_scrollController),
                ],
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingButton(_scaffoldKey),
    );
  }
}

class BackGroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RotatedBox(
        quarterTurns: 1,
        child: Image.asset('assets/tes.jpg'),
      ),
    );
  }
}

class LandingPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _ScafoldKey;

  LandingPage(this._ScafoldKey);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.white]),
      ),
      height: MediaQuery.of(context).size.height * 0.90,
      child: Column(
        children: [
          NavigationBar(_ScafoldKey),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Graphr',
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            blurRadius: 10,
                            offset: Offset.infinite)
                      ]),
                ),
                SizedBox(height: 40),
                Text(
                    'GREAT THINGS '
                    ' ARE COMING. ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
