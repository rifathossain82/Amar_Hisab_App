import 'package:flutter/material.dart';

class SideMenuController extends ChangeNotifier {
  int menuIndex = 1;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void openSideMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  void changeMenuIndex(int index){
    menuIndex = index;
    notifyListeners();
  }
}