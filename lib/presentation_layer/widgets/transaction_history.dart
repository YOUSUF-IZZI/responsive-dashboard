import 'package:flutter/material.dart';
import 'package:responsive_dashboard/domain_layer/transaction_history_list_tile_model.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/transaction_history_list_tile.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});
  static List<TransactionHistoryListTileModel> list = [
    TransactionHistoryListTileModel(title: 'Cash Withdrawal', date: '13 Apr, 2022 at 3:30 PM', price: r'$20,129', isWithdrawal: true),
    TransactionHistoryListTileModel(title: 'Landing Page project', date: '13 Apr, 2022 at 3:30 PM', price: r'$2,000', isWithdrawal: false),
    TransactionHistoryListTileModel(title: 'Cash Withdrawal', date: '13 Apr, 2022 at 3:30 PM', price: r'$20,129', isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 20,),
        Text(
          '13 April 2022',
          style: AppStyle.styleMedium16(context),
        ),
        const SizedBox(height: 16,),
        ListView.builder(
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return TransactionHistoryListTile(model: list[index]);
          },
        )
      ],
    );
  }
}
