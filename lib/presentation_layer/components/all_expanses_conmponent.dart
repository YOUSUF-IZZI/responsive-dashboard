import 'package:flutter/material.dart';
import 'package:responsive_dashboard/domain_layer/all_expenses_item_model.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/expenses_item_widget.dart';
import '../widgets/all_expanses_header.dart';


class AllExpansesComponent extends StatelessWidget {
  const AllExpansesComponent({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      //margin: const EdgeInsets.only(top: 40, left: 24, right: 24, ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          const AllExpansesHeader(),
          const SizedBox(height: 16,),
          Row(
            children: [
              Expanded(child: AllExpensesItemWidget(
                itemModel: AllExpensesItemModel(icon: 'assets/icons/balance.svg', title: 'Balance', date: 'April 2022', price: r'$20,129'),
              ),),
              const SizedBox(width: 12,),
              Expanded(child: AllExpensesItemWidget(
                itemModel: AllExpensesItemModel(icon: 'assets/icons/income.svg', title: 'Income', date: 'April 2022', price: r'$20,129'),
              ),),
              const SizedBox(width: 12,),
              Expanded(child: AllExpensesItemWidget(
                itemModel: AllExpensesItemModel(icon: 'assets/icons/expenses.svg', title: 'Expenses', date: 'April 2022', price: r'$20,129'),
              ),),
            ],
          )
        ],
      ),
    );
  }
}




