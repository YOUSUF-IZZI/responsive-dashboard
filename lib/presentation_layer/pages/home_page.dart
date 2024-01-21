import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_dashboard/presentation_layer/layouts/desktop_layout.dart';
import 'package:responsive_dashboard/presentation_layer/layouts/mobile_layout.dart';
import 'package:responsive_dashboard/presentation_layer/layouts/tablet_layout.dart';
import 'package:responsive_dashboard/presentation_layer/state_management/layout_mode_controller.dart';
import 'package:responsive_dashboard/utils/colors.dart';


class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth<600) {
            //ref.read(deviceTypeProvider.notifier).changeDeviceType(DeviceType.mobile);
            return const MobileLayout();
          }  else if (constraints.maxWidth < 900) {
            //ref.read(deviceTypeProvider.notifier).changeDeviceType(DeviceType.tablet);
            return const TabletLayout();
          }  else {
            //ref.read(deviceTypeProvider.notifier).changeDeviceType(DeviceType.desktop);
            return const DesktopLayout();
          }
        },
      ),
    );
  }
}
