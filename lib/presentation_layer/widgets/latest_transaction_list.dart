import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/domain_layer/user_info_item_model.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/user_info_list_tile.dart';

class LatestTransactionList extends StatelessWidget {
  const LatestTransactionList({super.key});
  static List<UserInfoItemModel> items = [
    UserInfoItemModel(icon: 'assets/icons/avatar1.svg', name: 'Madrani Andi', email: 'Madraniadi20@gmail'),
    UserInfoItemModel(icon: 'assets/icons/avatar2.svg', name: 'Josua Nunito', email: 'Madraniadi20@gmail'),
    UserInfoItemModel(icon: 'assets/icons/avatar1.svg', name: 'Madrani Andi', email: 'Josh Nunito@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    // This approach is used for small number of items for responsive purposes
    return ScrollConfiguration(
      behavior: const MaterialScrollBehavior().copyWith(dragDevices: {PointerDeviceKind.mouse}),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: items.map((e) => IntrinsicWidth(child: UserInfoListTile(model: e))).toList()
        ),
      ),
    );
    /*return SizedBox(
      height: 80,
      child: ScrollConfiguration(
        behavior: const MaterialScrollBehavior().copyWith(dragDevices: {PointerDeviceKind.mouse}),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(child: UserInfoListTile(model: items[index],));
          },
        ),
      ),
    );*/
  }
}
