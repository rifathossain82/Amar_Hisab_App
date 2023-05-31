import 'package:flutter/material.dart';
import 'package:hisab_app/src/core/extensions/build_context_extension.dart';
import 'package:hisab_app/src/features/dashboard/view/pages/dashboard_page.dart';
import 'package:hisab_app/src/features/main/view/widgets/side_menu.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      body: Row(
        children: [
          if (context.isDesktop)
            const Expanded(
              flex: 1,
              child: SideMenu(),
            ),
          const Expanded(
            flex: 5,
            child: DashboardPage(),
          ),
        ],
      ),
    );
  }
}
