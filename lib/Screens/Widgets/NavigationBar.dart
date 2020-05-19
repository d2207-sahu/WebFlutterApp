import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> _ScafoldKey;

  NavigationBar(this._ScafoldKey);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.2,
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * .15,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.camera,
                    size: 60,
                  ),
                  SizedBox(
                    width: 5,
                  ),
//                  Text(
//                    'Graphr',
//                    style: TextStyle(
//                        fontSize: 25,
//                        fontWeight: FontWeight.bold,
//                        shadows: [
//                          Shadow(
//                              color: Colors.black,
//                              blurRadius: 10,
//                              offset: Offset.infinite)
//                        ]),
//                  )
                ],
              ),
              IconButton(
                onPressed: () {
                  _ScafoldKey.currentState.openEndDrawer();
                },
                icon: Icon(
                  Icons.menu,
                ),
                iconSize: 40,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
