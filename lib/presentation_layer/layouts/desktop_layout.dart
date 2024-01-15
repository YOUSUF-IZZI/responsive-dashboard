import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/main_view.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/drawer_view.dart';


class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 3,
          child: DrawerView(),
        ),
        Expanded(
          flex: 6,
          child: MainView(),
        ),
        /*Expanded(
          flex: 4,
          child: Text('mid'),
        ),*/
      ],
    );
  }
}