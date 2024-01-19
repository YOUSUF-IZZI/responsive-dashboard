import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/custom_button.dart';
import 'package:responsive_dashboard/utils/colors.dart';

import '../widgets/cusotm_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: CustomTextField(title: 'Customer name', hint: 'Type customer name',)),
            SizedBox(width: 16,),
            Expanded(child: CustomTextField(title: 'Customer Email', hint: 'Type customer email',))
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: CustomTextField(title: 'Item name', hint: 'Type customer name',)),
            SizedBox(width: 16,),
            Expanded(child: CustomTextField(title: 'Item mount', hint: 'USD',))
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: CustomButton(
              backgroundColor: Colors.white,
              textColor: AppColors.appColor,
            ),),
            SizedBox(width: 24,),
            Expanded(child: CustomButton(
              backgroundColor: AppColors.appColor,
              textColor: Colors.white,
            ),),
          ],
        )
      ],
    );
  }
}
