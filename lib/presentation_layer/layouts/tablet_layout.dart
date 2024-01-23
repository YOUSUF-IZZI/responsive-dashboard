import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/card_view.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/drawer_view.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/main_view.dart';


class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 3,
          child: DrawerView(),
        ),
        SizedBox(width: 24,),
        Expanded(
          flex: 6,
          child: SingleChildScrollView(
            child: Column(
              children: [
                MainView(),
                SizedBox(height: 24,),
                CardView(),
                SizedBox(height: 24,),
              ],
            ),
          ),
        ),
        SizedBox(width: 24,),
      ],
    );
  }
}
