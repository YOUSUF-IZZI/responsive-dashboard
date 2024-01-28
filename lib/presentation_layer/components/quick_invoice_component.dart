import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation_layer/components/quick_invoice_form.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/latest_transaction_list.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/quick_invoice_header.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceComponent extends StatelessWidget {
  const QuickInvoiceComponent({super.key});

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(height: 24,),
          Text(
            'Latest Transaction',
            style: AppStyle.styleMedium16(context)
          ),
          const SizedBox(height: 12,),
          const LatestTransactionList(),
          const Divider(
            height: 48,
            color: Color(0xFFF1F1F1),
          ),
          const QuickInvoiceForm(),
        ],
      ),
    );
  }
}
