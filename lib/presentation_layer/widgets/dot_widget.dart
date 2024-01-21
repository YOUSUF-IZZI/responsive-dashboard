import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  const DotWidget({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: isActive == true ? 32 : 8,
        height: 8,
        decoration: ShapeDecoration(
          color: isActive == true ? const Color(0xFF4DB7F2) : const Color(0xFFE7E7E7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
