import 'package:flutter_riverpod/flutter_riverpod.dart';


class SelectedIndexNotifier extends StateNotifier<int> {
  SelectedIndexNotifier() : super(0);

  void changeSelectedIndex(int index) {
    state = index;
  }

}


final drawerSelectedIndexProvider = StateNotifierProvider<SelectedIndexNotifier, int>((ref) {
  return SelectedIndexNotifier();
});



