
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/constants/app_texts.dart';

class AddToBagButton extends StatelessWidget {
  const AddToBagButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.neutral100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.w),
          ),
          padding: EdgeInsets.all(8.w),
        ),
        onPressed: () {},
        child: Center(
          child: Text(
            'ADD TO BAG',
            style: AppTexts.text3(),
          ),
        ),
      ),
    );
  }
}
