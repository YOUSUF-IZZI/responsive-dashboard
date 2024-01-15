import 'package:flutter/material.dart';
import 'package:responsive_dashboard/domain_layer/drawer_items_model.dart';
import 'package:responsive_dashboard/presentation_layer/components/drawer_component.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/drawer_item_list_tile.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/user_info_list_tile.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTile(
              avatar: 'assets/icons/avatar3.svg',
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8,)),
          DrawerComponents(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Spacer(),
                DrawerItemListTile(itemModel: DrawerItemModel(icon: 'assets/icons/setting.svg', title: 'Setting system')),
                DrawerItemListTile(itemModel: DrawerItemModel(icon: 'assets/icons/logout.svg', title: 'Logout account')),
                const SizedBox(height: 40,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//padding: const EdgeInsets.only(left: 28, right: 20, bottom: 48),