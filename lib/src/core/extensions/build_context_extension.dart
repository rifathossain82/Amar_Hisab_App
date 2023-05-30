import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hisab_app/src/core/utils/color.dart';

extension BuildContextExtension on BuildContext {
  void unFocusKeyboard() => FocusScope.of(this).unfocus();

  bool get isMobile => MediaQuery.of(this).size.width < 850;

  bool get isTablet =>
      MediaQuery.of(this).size.width < 1100 &&
      MediaQuery.of(this).size.width >= 850;

  bool get isDesktop => MediaQuery.of(this).size.width >= 1100;

  double get screenHeight => MediaQuery.of(this).size.height;

  double get screenWidth => MediaQuery.of(this).size.width;

  Size get screenSize => MediaQuery.of(this).size;

  double get minScreenSize =>
      min(MediaQuery.of(this).size.height, MediaQuery.of(this).size.width);

  double get maxScreenSize =>
      max(MediaQuery.of(this).size.height, MediaQuery.of(this).size.width);

  TextTheme get textTheme => Theme.of(this).textTheme;

  Color get primaryColor => Theme.of(this).primaryColor;

  TextStyle get buttonTextStyle =>
      Theme.of(this).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: kWhite,
          );

  TextStyle get outlinedButtonTextStyle =>
      Theme.of(this).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: isDark ? kWhite : kDarkPrimaryColor,
          );

  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  void showSnackBar({
    required String message,
    required Color bgColor,
  }) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: Text(
            message,
            style: TextStyle(
              color: kWhite,
            ),
          ),
          duration: const Duration(seconds: 1),
          backgroundColor: bgColor,
        ),
      );

  void pop({dynamic result}) => Navigator.of(this).pop(result);

  Future push(Widget nextPage) => Navigator.push(
        this,
        MaterialPageRoute(
          builder: (context) => nextPage,
        ),
      );

  Future pushReplacement(Widget nextPage) => Navigator.pushReplacement(
        this,
        MaterialPageRoute(
          builder: (context) => nextPage,
        ),
      );

  Future pushAndRemoveUntil(Widget nextPage) => Navigator.pushAndRemoveUntil(
        this,
        MaterialPageRoute(
          builder: (context) => nextPage,
        ),
        (route) => false,
      );

  Future pushNamed({
    required String routeName,
    dynamic arguments,
  }) =>
      Navigator.pushNamed(
        this,
        routeName,
        arguments: arguments,
      );

  Future pushReplacementNamed({
    required String routeName,
    dynamic arguments,
  }) =>
      Navigator.pushReplacementNamed(
        this,
        routeName,
        arguments: arguments,
      );

  Future pushNamedAndRemoveUntil({
    required String routeName,
    dynamic arguments,
  }) =>
      Navigator.pushNamedAndRemoveUntil(
        this,
        routeName,
        (route) => false,
        arguments: arguments,
      );
}
