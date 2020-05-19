import 'package:divyanshucompany/ViewModel/HomePageProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomePageProvider>(
      create: (_) => HomePageProvider(_pageController),
      builder: (context, child) => Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Stack(
          children: [
            PageView(
              physics: ClampingScrollPhysics(),
              controller: _pageController,
              children: [Page1(), Page2()],
              pageSnapping: true,
            ),
            BackGroundImage(),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Container(
        height: 10,
        decoration: BoxDecoration(color: Colors.pink),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.green),
      ),
    );
  }
}

class BackGroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomePageProvider>(
      builder: (context, model, child) {
        return Positioned(
          top: MediaQuery.of(context).size.height * 0.25,
          left: -model.offset * 0.7,
          child: child,
        );
      },
      child: IgnorePointer(
        child: Opacity(
          opacity: 0.8,
          child: Image(
            width: MediaQuery.of(context).size.height * 1.1,
            image: AssetImage('assets/tes.jpg'),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
