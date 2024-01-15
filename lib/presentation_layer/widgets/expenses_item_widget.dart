import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/domain_layer/all_expenses_item_model.dart';
import 'package:responsive_dashboard/presentation_layer/state_management/all_expenses_selected_item_controller.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class AllExpensesItemWidget extends ConsumerWidget {
  const AllExpensesItemWidget({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedItem = ref.watch(allExpensesSelectedItemProvider);
    return GestureDetector(
      onTap: (){
        ref.read(allExpensesSelectedItemProvider.notifier).changeSelectedItem(itemModel.title);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: ShapeDecoration(
          color: selectedItem == itemModel.title ? const Color(0xFF4DB7F2) : Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: ShapeDecoration(
                    color: selectedItem == itemModel.title ? Colors.white.withOpacity(0.10000000149011612) : const Color(0xFFFAFAFA),
                    shape: const OvalBorder(),
                  ),
                  child: Center(
                      child: SvgPicture.asset(
                        itemModel.icon,
                        colorFilter: ColorFilter.mode(selectedItem == itemModel.title ? Colors.white : Color(0xFF4EB7F2), BlendMode.srcIn),
                      ),
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/icons/arrow-right.svg',
                  colorFilter: ColorFilter.mode(selectedItem == itemModel.title ? Colors.white : const Color(0xFF064061), BlendMode.srcIn),
                ),
              ],
            ),
            const SizedBox(height: 34),
            Text(
              itemModel.title,
              style: selectedItem == itemModel.title ? AppStyle.styleSemiBold16.copyWith(color: Colors.white) : AppStyle.styleSemiBold16
            ),
            const SizedBox(height: 8,),
            Text(
              itemModel.date,
                style: selectedItem == itemModel.title ? AppStyle.styleRegular14.copyWith(color: Colors.white) : AppStyle.styleRegular14
            ),
            const SizedBox(height: 8,),
            Text(
              itemModel.price,
                style: selectedItem == itemModel.title ? AppStyle.styleSemiBold24.copyWith(color: Colors.white) : AppStyle.styleSemiBold24
            )
            /*Container(
              width: double.infinity,
              height: 90,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 45,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Balance',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'April 2022',
                          style: TextStyle(
                            color: Color(0xFFFAFAFA),
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    height: 29,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$20,129',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
