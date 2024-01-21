import 'package:flutter/material.dart';
import 'package:responsive_dashboard/domain_layer/transaction_history_list_tile_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/colors.dart';

class TransactionHistoryListTile extends StatelessWidget {
  const TransactionHistoryListTile({super.key, required this.model});
  final TransactionHistoryListTileModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        title: Text(
          model.title,
          style: AppStyle.styleSemiBold16,
        ),
        subtitle: Text(
          model.date,
          style: AppStyle.styleRegular16.copyWith(color: const Color(0xFFAAAAAA),),
        ),
        trailing: Text(
          model.price,
          style: AppStyle.styleSemiBold20.copyWith(color: model.isWithdrawal == true ? AppColors.red : AppColors.green),
        ),
      ),
    );
  }
}
