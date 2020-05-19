import 'package:divyanshucompany/Constants/constants.dart';
import 'package:divyanshucompany/Service/NavigationService.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Locator.dart';

class FormFillInInterestInStartup extends StatefulWidget {
  double topOne;

  FormFillInInterestInStartup(this.topOne);

  @override
  _FormFillInInterestInStartupState createState() =>
      _FormFillInInterestInStartupState();
}

class _FormFillInInterestInStartupState
    extends State<FormFillInInterestInStartup>
    with SingleTickerProviderStateMixin {
  final naviagtor = locator<NavigationService>();
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(milliseconds: 600), vsync: this);
    _animationController.forward();
  }

//  Animation<double>   anim = Tween<double>(begin : 0,end:2).animate(_animationController)..addListener(() {setState();});

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
//    return Container(
//        height: MediaQuery.of(context).size.height * 0.9,
//        color: Colors.white,
//        child: Transform.translate(
//          offset: Offset(widget.topOne, 0),
//          child: Center(
//            child: RaisedButton(
//              child: Text(
//                'JoinUs',
//                style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold),
//              ),
//              onPressed: () {
//                naviagtor.goTo(joinUsRoute);
//              },
//            ),
//          ),
//        ));
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Text(
              'Sign up now and be the first'
              ' to know when we go live:',
              textAlign: TextAlign.center,
              style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: TextFormField(
              minLines: 1,
              validator: (value) {
                if (!(value is String)) {
                  return "Enter A Valid EmailAddress";
                }
                return null;
              },
              onSaved: (value) {
//                  return model.addDescription(value);
              },
              decoration: textInputDecoration.copyWith(
                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.all(
//                      Radius.circular(0),
//                    ),
                      ),
                  suffixIcon: Icon(
                    Icons.mail_outline,
                    color: Colors.black54,
                  ),
                  alignLabelWithHint: true,
                  hintText: 'Enter Email Here'),
              maxLines: 1,
              keyboardType: TextInputType.emailAddress,
              enabled: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                color: Colors.black,
                elevation: 5,
                child: Text(
                  "Notify Me",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  print('Clicked');
//              model.navigateToMaps();
                },
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
