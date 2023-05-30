import 'package:flutter/material.dart';

Color kLightPrimaryColor = const Color(0xFFfefffe);
Color kLightSecondaryColor = const Color(0xFFf8f9f9);

Color kDarkPrimaryColor = const Color(0xFF293146);
Color kDarkSecondaryColor = const Color(0xFF171c31);

Color kWhite = Colors.white;
Color kRed = Colors.red;
Color kRedLight = const Color(0xFFf36d58);
Color kRedMedium = const Color(0xFFff4f5a);
Color kRedDeep = const Color(0xFFF71B24);
Color kBlack = Colors.black;
Color kBlackLight = const Color(0xFF303030);
Color kBlackMedium = const Color(0xFF404040);
Color kBlue = const Color(0xFF3879E9);
Color kBlueLight = const Color(0xFFC7D0EC);
Color kBlueDark = const Color(0xFF243E8B);
Color kGrey = const Color(0xFF9EA1B6);
Color kGreyMedium = const Color(0xFFC4C4C4);
Color kGreyLight = const Color(0xFFe7e7e6);
Color kGreen = const Color(0xFF1CAF5E);
Color kOrange = const Color(0xFFFFA800);
Color kDeepOrange = const Color(0xFFFF5F2D);

Color kShadowColor = const Color(0xFF616161).withOpacity(0.18);
Color kRedShadowColor = const Color(0xFFfaebeb);
Color kItemShadowColor = const Color(0xFF000000).withOpacity(0.10);
Color kItemBlueShadowColor = const Color(0xFFEFF3FF);
Color kItemBlueDarkShadowColor = const Color(0xFF171d30).withOpacity(0.8);
Color kGreyTextColor = const Color(0xFFA5A5A5);
Color kDividerColor = const Color(0xFFE8ECF2);
Color kBlueGrey = const Color(0xFF7D8FAB);
Color? kDarkBlueGrey = Colors.blueGrey[900];

Color kShimmerBaseColor = Colors.grey.shade300;
Color kShimmerHighlightColor = Colors.grey.shade100;

Color successColor = Colors.green;
Color failedColor = Colors.red;
Color warningColor = Colors.orange;

Color kLightScaffoldBgColor = const Color(0xFFf8f9f9);
Color kDarkScaffoldBgColor = const Color(0xFF171c31);

final List<Color> randomColors = [
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.teal,
  Colors.purple,
];

Map<int, Color> materialColor = const {
  50: Color.fromRGBO(99,99,222, .1),
  100: Color.fromRGBO(99,99,222, .2),
  200: Color.fromRGBO(99,99,222, .3),
  300: Color.fromRGBO(99,99,222, .4),
  400: Color.fromRGBO(99,99,222, .5),
  500: Color.fromRGBO(99,99,222, .6),
  600: Color.fromRGBO(99,99,222, .7),
  700: Color.fromRGBO(99,99,222, .8),
  800: Color.fromRGBO(99,99,222, .9),
  900: Color.fromRGBO(99,99,222, 1),
};

MaterialColor kPrimarySwatchColor = MaterialColor(
  0xFF6363de,
  materialColor,
);