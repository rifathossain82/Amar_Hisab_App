import 'package:flutter/material.dart';
import 'package:hisab_app/src/core/extensions/build_context_extension.dart';
import 'package:hisab_app/src/views/dashboard/widgets/dashboard_header_widget.dart';

class DashboardPage extends StatelessWidget {
  final Widget child;

  const DashboardPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.screenWidth * 0.02,
        ),
        child: Column(
          children: [
            const DashboardHeaderWidget(),
            Expanded(
              child: SizedBox(
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
