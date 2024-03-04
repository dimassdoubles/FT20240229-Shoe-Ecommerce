import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/constants/app_texts.dart';

class AddToBagButton extends StatelessWidget {
  final Animation<double> animation;
  const AddToBagButton({
    super.key,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(animation),
      child: FadeTransition(
        opacity: animation,
        child: Padding(
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
        ),
      ),
    );
  }
}
