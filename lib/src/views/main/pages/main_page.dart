import 'package:flutter/material.dart';
import 'package:hisab_app/src/controllers/side_menu_controller.dart';
import 'package:hisab_app/src/core/extensions/build_context_extension.dart';
import 'package:hisab_app/src/core/fake_data/fake_data.dart';
import 'package:hisab_app/src/core/utils/app_constants.dart';
import 'package:hisab_app/src/core/utils/asset_path.dart';
import 'package:hisab_app/src/core/utils/color.dart';
import 'package:hisab_app/src/views/business/pages/add_business_page.dart';
import 'package:hisab_app/src/views/dashboard/pages/dashboard_page.dart';
import 'package:hisab_app/src/views/main/widgets/drawer_item_builder.dart';
import 'package:hisab_app/src/views/main/widgets/side_menu.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int? selectedIndex = 0;
  bool isClickedAddBusiness = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<SideMenuController>().scaffoldKey,
      drawer: _buildSideMenu(),
      body: Row(
        children: [
          if (context.isDesktop)
            Expanded(
              flex: 1,
              child: _buildSideMenu(),
            ),
          Expanded(
            flex: 5,
            child: DashboardPage(
              child: isClickedAddBusiness ? const AddBusinessPage() : Container(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSideMenu(){
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
              onTap: () {
                setState(() {
                  isClickedAddBusiness = true;
                  selectedIndex = null;
                });
              } ,
              horizontalTitleGap: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  color: context.textTheme.titleSmall!.color!,
                  width: 1,
                ),
              ),
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
                  isClickedAddBusiness = false;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
