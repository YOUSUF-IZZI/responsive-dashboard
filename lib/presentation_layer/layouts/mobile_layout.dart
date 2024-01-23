import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/card_view.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/main_view.dart';


class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MainView(),
          SizedBox(height: 24,),
          CardView(),
          SizedBox(height: 24,),
        ],
      ),
    );
  }
}
