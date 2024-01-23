import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/card_view.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/main_view.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/drawer_view.dart';


class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: DrawerView(),
        ),
        SizedBox(width: 24,),
        Expanded(
          flex: 6,
          child: SingleChildScrollView(child: MainView()),
        ),
        SizedBox(width: 24,),
        Expanded(
          flex: 4,
          child: SingleChildScrollView(child: CardView()),
        ),
        SizedBox(width: 24,),
      ],
    );
  }
}
