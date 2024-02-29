import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/constants/app_texts.dart';

class SizeItem extends StatelessWidget {
  final String label;
  final bool isActive;
  const SizeItem({
    super.key,
    required this.label,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 4.w,
      ),
      decoration: BoxDecoration(
        color: isActive ? AppColors.neutral600 : AppColors.neutral100,
        borderRadius: BorderRadius.circular(4.w),
        border: Border.all(
          color: AppColors.neutral400,
        ),
      ),
      child: Text(
        label,
        style: AppTexts.text4(
          color: isActive ? AppColors.neutral100 : AppColors.neutral600,
        ),
      ),
    );
  }
}
