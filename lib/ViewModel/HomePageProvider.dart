import 'package:flutter/cupertino.dart';

class HomePageProvider extends ChangeNotifier {
  double _offset = 0;
  //this was causing error

  HomePageProvider(PageController _pageController) {
    _pageController.addListener(() {
      _offset = _pageController.offset;
      notifyListeners();
    });
  }

  double get offset => _offset;
}
