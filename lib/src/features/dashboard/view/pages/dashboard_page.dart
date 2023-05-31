import 'package:flutter/material.dart';
import 'package:hisab_app/src/core/extensions/build_context_extension.dart';
import 'package:hisab_app/src/core/utils/color.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.screenWidth * 0.02,
        ),
        child: Column(
          children: [
            Container(
              height: 60,
              width: context.screenWidth,
              margin: const EdgeInsets.symmetric(
                vertical: 15,
              ),
              decoration: BoxDecoration(
                color: context.primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [

                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
