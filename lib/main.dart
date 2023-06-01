import 'package:flutter/material.dart';
import 'package:hisab_app/src/controllers/side_menu_controller.dart';
import 'package:hisab_app/src/controllers/theme_controller.dart';
import 'package:hisab_app/src/core/theme/app_theme.dart';
import 'package:hisab_app/src/core/utils/app_constants.dart';
import 'package:hisab_app/src/views/main/pages/main_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeController()),
        ChangeNotifierProvider(create: (context) => SideMenuController()),
      ],
      child: Consumer<ThemeController>(
        builder: (_, context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppConstants.appName,
          home: const MainPage(),
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: context.isDarkMode ? ThemeMode.dark : ThemeMode.light,
        ),
      ),
    );
  }
}
