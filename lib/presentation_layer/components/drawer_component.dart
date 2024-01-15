import 'package:flutter/material.dart';
import 'package:responsive_dashboard/domain_layer/drawer_items_model.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/drawer_item_list_tile.dart';

class DrawerComponents extends StatelessWidget {
  DrawerComponents({super.key});
  final List<DrawerItemModel> itemsList =
  [
    DrawerItemModel(icon: 'assets/icons/dashboard.svg', title: 'Dashboard'),
    DrawerItemModel(icon: 'assets/icons/my_transaction.svg', title: 'My Transaction'),
    DrawerItemModel(icon: 'assets/icons/statistics.svg', title: 'Statistics'),
    DrawerItemModel(icon: 'assets/icons/wallet.svg', title: 'Wallet Account'),
    DrawerItemModel(icon: 'assets/icons/my_investments.svg', title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: itemsList.length,
      itemBuilder: (context, index) {
        return DrawerItemListTile(itemModel: itemsList[index], index: index,);
      },
    );
  }
}
