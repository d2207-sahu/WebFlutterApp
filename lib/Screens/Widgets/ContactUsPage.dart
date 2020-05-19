import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactUsPage extends StatefulWidget {
  final ScrollController _scrollController;

  ContactUsPage(this._scrollController);

  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Contact Us',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45,
              ),
            ),
            Text(
              'divyanshusahu22@gmail.com',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
              '9907574095',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 40,
                  icon: Icon(FontAwesomeIcons.instagram),
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 40,
                  icon: Icon(FontAwesomeIcons.facebook),
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 40,
                  icon: Icon(FontAwesomeIcons.linkedin),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.copyright, size: 15),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Graphr.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: RaisedButton(
                color: Colors.black,
                onPressed: () {
                  print('Pressed');
                },
                child: IconButton(
                  icon: Icon(Icons.arrow_upward),
                  color: Colors.white,
                  iconSize: 50,
                  onPressed: () {
                    widget._scrollController.animateTo(0.0,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeOutExpo);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.5,
    );
  }
}
