import 'package:flutter/material.dart';
import 'package:hisab_app/src/controllers/side_menu_controller.dart';
import 'package:hisab_app/src/core/extensions/build_context_extension.dart';
import 'package:hisab_app/src/views/business/add_business_page.dart';
import 'package:hisab_app/src/views/dashboard/pages/dashboard_page.dart';
import 'package:hisab_app/src/views/main/widgets/side_menu.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<SideMenuController>().scaffoldKey,
      drawer: const SideMenu(),
      body: Row(
        children: [
          if (context.isDesktop)
            const Expanded(
              flex: 1,
              child: SideMenu(),
            ),
          Expanded(
            flex: 5,
            child: DashboardPage(
              child: AddBusinessPage(),
            ),
          ),
        ],
      ),
    );
  }
}
