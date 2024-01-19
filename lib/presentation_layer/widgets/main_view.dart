import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation_layer/components/all_expanses_conmponent.dart';
import 'package:responsive_dashboard/presentation_layer/components/quick_invoice_component.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpansesComponent(),
        SizedBox(height: 24,),
        QuickInvoiceComponent(),
      ],
    );
  }
}
