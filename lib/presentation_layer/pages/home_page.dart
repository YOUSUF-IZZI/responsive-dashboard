import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_dashboard/presentation_layer/layouts/desktop_layout.dart';
import 'package:responsive_dashboard/presentation_layer/layouts/mobile_layout.dart';
import 'package:responsive_dashboard/presentation_layer/layouts/tablet_layout.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/drawer_view.dart';
import 'package:responsive_dashboard/utils/colors.dart';

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: MediaQuery.sizeOf(context).width < 800 ? AppBar(
          backgroundColor: AppColors.appColor,
          leading: IconButton(
            onPressed: (){
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu, color: Colors.white,),
          ),
        ) : null,
        backgroundColor: AppColors.scaffoldBackground,
        drawer: MediaQuery.sizeOf(context).width < 800 ? const DrawerView() : null,
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 800) {
              return const MobileLayout();
            }  else if (constraints.maxWidth < 1200) {
              return const TabletLayout();
            }  else {
              return const DesktopLayout();
            }
          },
        ),
      ),
    );
  }
}
