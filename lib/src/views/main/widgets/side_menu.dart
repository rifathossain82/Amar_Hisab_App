import 'package:flutter/material.dart';
import 'package:hisab_app/src/core/extensions/build_context_extension.dart';
import 'package:hisab_app/src/core/fake_data/fake_data.dart';
import 'package:hisab_app/src/core/utils/app_constants.dart';
import 'package:hisab_app/src/core/utils/asset_path.dart';
import 'package:hisab_app/src/core/utils/color.dart';
import 'package:hisab_app/src/views/main/widgets/drawer_item_builder.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          /// Drawer Header
          SizedBox(
            height: context.screenHeight * 0.15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetPath.logo,
                  color: kPrimarySwatchColor,
                  height: 50,
                ),
                const SizedBox(width: 5),
                Text(
                  AppConstants.appName,
                  style: context.textTheme.titleLarge!.copyWith(
                    color: kPrimarySwatchColor,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),

          /// add new business button
          Container(
            height: 50,
            width: context.screenWidth,
            margin: const EdgeInsets.all(15),
            child: ListTile(
              onTap: () {},
              horizontalTitleGap: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    color: Theme.of(context).textTheme.titleSmall!.color!,
                    width: 1,
                  )),
              leading: const Icon(Icons.add),
              title: Text(
                'Add New Business',
                style: context.textTheme.titleSmall,
              ),
            ),
          ),

          const SizedBox(height: 10),

          /// side menu items
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: businessDummyData.length,
            itemBuilder: (context, index) => DrawerItemBuilder(
              business: businessDummyData[index],
              isSelected: selectedIndex == index,
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
