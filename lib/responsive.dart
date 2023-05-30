import 'package:flutter/material.dart';
import 'package:hisab_app/src/core/extensions/build_context_extension.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// If our width is more than 1100 then we consider it a desktop
    if (context.screenWidth >= 1100) {
      return desktop;
    }

    /// If width it less then 1100 and more then 850 we consider it as tablet
    else if (context.screenWidth >= 850 && tablet != null) {
      return tablet!;
    }

    /// Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
