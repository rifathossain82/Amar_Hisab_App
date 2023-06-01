import 'package:flutter/material.dart';
import 'package:hisab_app/src/controllers/side_menu_controller.dart';
import 'package:hisab_app/src/controllers/theme_controller.dart';
import 'package:hisab_app/src/core/extensions/build_context_extension.dart';
import 'package:hisab_app/src/core/utils/color.dart';
import 'package:provider/provider.dart';

class DashboardHeaderWidget extends StatelessWidget {
  const DashboardHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: context.screenWidth,
      margin: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: context.primaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0.0, 3.0),
            spreadRadius: 0,
            blurRadius: 4,
            color: kItemShadowColor,
          ),
          BoxShadow(
            offset: const Offset(0.0, -2.0),
            spreadRadius: 0,
            blurRadius: 4,
            color: kItemShadowColor,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              if (!context.isDesktop)
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    context.read<SideMenuController>().openSideMenu();
                  },
                ),
              if (!context.isMobile) const SizedBox(width: 15),
              if (!context.isMobile)
                Text(
                  "Dashboard",
                  style: context.textTheme.titleLarge,
                ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  context.read<ThemeController>().toggleTheme();
                },
                icon: Icon(
                  context.isDark ? Icons.dark_mode : Icons.light_mode,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
