import 'package:flutter/material.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/constants/app_sizes.dart';
import 'package:shoes_ecommerce/constants/app_texts.dart';
import 'package:shoes_ecommerce/home/widgets/big_shoe_card.dart';
import 'package:shoes_ecommerce/home/widgets/gaps.dart';

class VerticalTabBar extends StatelessWidget {
  const VerticalTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.paddingPage),
      height: BigShoeCard.height,
      child: RotatedBox(
        quarterTurns: -1,
        child: Row(
          children: [
            Text(
              'Upcomming',
              style: AppTexts.text2(color: AppColors.neutral400),
            ),
            Gaps.h36,
            Text(
              'Featured',
              style: AppTexts.text2(color: AppColors.neutral600),
            ),
            Gaps.h36,
            Text(
              'New',
              style: AppTexts.text2(color: AppColors.neutral400),
            ),
          ],
        ),
      ),
    );
  }
}
