import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class AllExpansesHeader extends StatelessWidget {
  const AllExpansesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'All Expenses',
          style: AppStyle.styleSemiBold20,
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Row(
            children: [
              Text(
                'Monthly',
                style: AppStyle.styleMedium16,
              ),
              SizedBox(width: 18,),
              Icon(Icons.arrow_drop_down_outlined),
            ],
          ),
        )
      ],
    );
  }
}
