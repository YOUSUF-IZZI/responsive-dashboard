import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation_layer/components/my_card_component.dart';


class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCardComponent(),
          SizedBox(height: 24,),
          //IncomeComponent(),
        ],
      ),
    );
  }
}
