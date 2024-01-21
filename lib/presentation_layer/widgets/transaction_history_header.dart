import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Transaction History',
          style: AppStyle.styleSemiBold20,
        ),
        const Spacer(),
        Text(
          'See all',
          style: AppStyle.styleMedium16.copyWith(color: const Color(0xFF4EB7F2)),
        )
      ],
    );
  }
}
