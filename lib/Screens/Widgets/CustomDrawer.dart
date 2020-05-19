import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  final ScrollController _scrollController;
  CustomDrawer(this._scrollController);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      width: MediaQuery.of(context).size.width * .9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SafeArea(
            child: Column(
              children: [
                DrawerHeader(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _scrollController.animateTo(450,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInExpo);
                    },
                    child: Text('Join Us',
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _scrollController.animateTo(800,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInExpo);
                    },
                    child: Text('Contact Us',
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 40,
                  icon: Icon(FontAwesomeIcons.facebook, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 40,
                  icon: Icon(FontAwesomeIcons.linkedin, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
