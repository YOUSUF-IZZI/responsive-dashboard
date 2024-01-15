import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation_layer/layouts/desktop_layout.dart';
import 'package:responsive_dashboard/presentation_layer/layouts/mobile_layout.dart';
import 'package:responsive_dashboard/presentation_layer/layouts/tablet_layout.dart';
import 'package:responsive_dashboard/utils/colors.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth<600) {
            return const MobileLayout();
          }  else if (constraints.maxWidth < 900) {
            return const TabletLayout();
          }  else {
            return const DesktopLayout();
          }
        },
      ),
    );
  }
}
