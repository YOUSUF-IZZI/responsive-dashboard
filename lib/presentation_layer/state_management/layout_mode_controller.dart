import 'package:flutter_riverpod/flutter_riverpod.dart';

enum DeviceType {mobile, tablet, desktop}

class LayoutModeNotifier extends StateNotifier<DeviceType> {
  LayoutModeNotifier() : super(DeviceType.mobile);

  void changeDeviceType(DeviceType deviceType) {
    state = deviceType;
  }

}


final deviceTypeProvider = StateNotifierProvider<LayoutModeNotifier, DeviceType>((ref) {
  return LayoutModeNotifier();
});