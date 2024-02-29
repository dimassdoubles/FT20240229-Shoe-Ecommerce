
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/constants/app_texts.dart';

class ShoeCardHeader extends StatelessWidget {
  const ShoeCardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: 130.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 15.w,
            height: 55.w,
            color: AppColors.primary,
            child: RotatedBox(
              quarterTurns: -1,
              child: Text(
                'NEW',
                textAlign: TextAlign.center,
                style: AppTexts.text1(
                    color: AppColors.neutral100),
              ),
            ),
          ),
          Image.asset('assets/icons/ic_favorite_black.png'),
        ],
      ),
    );
  }
}
