import 'package:flutter/material.dart';
import '../Enums.dart';

class BaseModel with ChangeNotifier {
  ViewState _viewState = ViewState.Idle;
  ViewState get viewState => _viewState;

  setBusy() {
    if (_viewState == ViewState.Busy) {
    } else
      _viewState = ViewState.Busy;
    notifyListeners();
  }

  setIdle() {
    if (_viewState == ViewState.Idle) {
    } else
      _viewState = ViewState.Idle;
    notifyListeners();
  }
}
