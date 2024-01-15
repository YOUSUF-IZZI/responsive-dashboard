import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/domain_layer/drawer_items_model.dart';
import 'package:responsive_dashboard/presentation_layer/state_management/drawer_selected_index_controller.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/colors.dart';

class DrawerItemListTile extends ConsumerWidget {
  const DrawerItemListTile({super.key, required this.itemModel, this.index});
  final  DrawerItemModel itemModel;
  final int? index;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(drawerSelectedIndexProvider);
    return GestureDetector(
      onTap: (){
        ref.read(drawerSelectedIndexProvider.notifier).changeSelectedIndex(index!);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListTile(
          leading: SvgPicture.asset(itemModel.icon),
          title: Text(
            itemModel.title,
            style: index == selectedIndex ? AppStyle.styleRegular16.copyWith(color: AppColors.appColor) : AppStyle.styleRegular16,
          ),
          trailing: index == selectedIndex ?
          Container(
            width: 3.27,
            height: 48,
            decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
          ) : null,
        ),
      ),
    );
  }
}
