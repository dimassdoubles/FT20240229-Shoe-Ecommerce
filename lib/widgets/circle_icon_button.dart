import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';

class CircleIconButton extends StatelessWidget {
  final String icon;
  const CircleIconButton(
    this.icon, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 30.w,
      decoration: const BoxDecoration(
        color: AppColors.neutral200,
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        icon,
        width: 20.w,
        height: 20.w,
      ),
    );
  }
}
