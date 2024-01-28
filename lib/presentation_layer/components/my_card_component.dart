import 'dart:ui';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_dashboard/presentation_layer/state_management/page_view_controller.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/card_widget.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/dot_indicator_widget.dart';
import 'package:responsive_dashboard/presentation_layer/widgets/transaction_history.dart';
import '../../utils/app_styles.dart';


class MyCardComponent extends ConsumerWidget {
  const MyCardComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyle.styleSemiBold20(context),
        ),
        const SizedBox(height: 20,),
        ScrollConfiguration(
          behavior: MediaQuery.sizeOf(context).width < 800 ?
          const MaterialScrollBehavior().copyWith(dragDevices: {PointerDeviceKind.touch}) :
          const MaterialScrollBehavior().copyWith(dragDevices: {PointerDeviceKind.mouse}),
          child: ExpandablePageView(
            onPageChanged: (index){
              ref.read(pageViewIndexProvider.notifier).state = index;
            },
            scrollDirection: Axis.horizontal,
            children: List.generate(3, (index) => const CardWidget()),
          ),
        ),
        const SizedBox(height: 20,),
        const DotIndicatorWidget(),
        const Divider(
          height: 40,
          color: Color(0xFFF1F1F1),
        ),
        const TransactionHistory(),
      ],
    );
  }
}
