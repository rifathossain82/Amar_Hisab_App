import 'package:flutter/material.dart';
import 'package:hisab_app/src/core/theme/app_theme.dart';
import 'package:hisab_app/src/core/utils/app_constants.dart';
import 'package:hisab_app/src/features/main/view/pages/main_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      home: const MainPage(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
