import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420/215,
      child: Container(
        decoration: ShapeDecoration(
          color: AppColors.appColor,
          image: const DecorationImage(
            image: AssetImage('assets/images/CardBackground.png')
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(left: 24, top: 14, right: 42),
              title: Text(
                'Card Name',
                style: AppStyle.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: const Text(
                'Syah Bandi',
                style: AppStyle.styleMedium20,
              ),
              trailing: SvgPicture.asset('assets/icons/gallery.svg'),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                '0918 8124 0042 8129',
                style: AppStyle.styleSemiBold24.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                '12/20 - 124',
                style: AppStyle.styleRegular16.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(height: 24,)
          ],
        ),
      ),
    );
  }
}