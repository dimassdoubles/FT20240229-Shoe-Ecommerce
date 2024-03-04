import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/constants/app_texts.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: RotatedBox(
              quarterTurns: 2,
              child: Image.asset(
                'assets/icons/ic_arrow_white.png',
              ),
            ),
          ),
          Text(
            'Ortuseight',
            style: AppTexts.text3(
              color: AppColors.neutral100,
            ),
          ),
          Container(
            width: 30.w,
            height: 30.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.neutral600.withOpacity(0.05),
            ),
            child: Image.asset(
              'assets/icons/ic_favorite_white.png',
            ),
          ),
        ],
      ),
    );
  }
}
