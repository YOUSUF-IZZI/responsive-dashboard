import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_dashboard/presentation_layer/state_management/page_view_controller.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/dot_widget.dart';


class DotIndicatorWidget extends ConsumerWidget {
  const DotIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexProvider = ref.watch(pageViewIndexProvider);
    return Row(
      children: List.generate(3, (index) => DotWidget(isActive: indexProvider == index ? true : false,)),
    );
  }
}
