import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyle.styleMedium16(context)
        ),
        const SizedBox(height: 12,),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppStyle.styleRegular16(context).copyWith(color: const Color(0xFFAAAAAA),),
            fillColor: const Color(0xFFFAFAFA),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFFAFAFA),
              )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Color(0xFFFAFAFA),
                )
            ),
          ),
        ),
      ],
    );
  }
}
