import 'package:flutter/material.dart';

import 'BottomSheetPage.dart';

class FloatingButton extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scafoldKey;

  FloatingButton(this._scafoldKey);

  @override
  _FloatingButtonState createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  bool _bottomSheetOpen = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Center(
        child: _bottomSheetOpen
            ? Icon(
                Icons.keyboard_arrow_down,
                size: 25,
                color: Colors.white,
              )
            : Icon(
                Icons.message,
                size: 25,
                color: Colors.white,
              ),
      ),
      backgroundColor: Colors.black,
      elevation: 20,
      focusColor: Colors.white,
      splashColor: Colors.white,
      focusElevation: 30,
      hoverColor: Colors.white,
      onPressed: () {
        var _bottomSheetcontroller;
        _bottomSheetOpen
            ? Navigator.of(context).pop()
            : _bottomSheetcontroller = showBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return BottomSheetPage();
                },
              );
        setState(() {
          _bottomSheetOpen = true;
        });
        _bottomSheetcontroller.closed.then((value) => setState(() {
              _bottomSheetOpen = false;
            }));
      },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(15),
        topLeft: Radius.circular(15),
        bottomRight:
            _bottomSheetOpen ? Radius.circular(15) : Radius.circular(0),
        bottomLeft: Radius.circular(15),
      )),
    );
  }
}
