import 'package:flutter_riverpod/flutter_riverpod.dart';


class SelectedItemNotifier extends StateNotifier<String> {
  SelectedItemNotifier() : super('');

  void changeSelectedItem(String itemTitle) {
    state = itemTitle;
  }

}


final allExpensesSelectedItemProvider = StateNotifierProvider<SelectedItemNotifier, String>((ref) {
  return SelectedItemNotifier();
});
