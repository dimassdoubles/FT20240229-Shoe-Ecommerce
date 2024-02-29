import 'package:flutter/material.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/constants/app_sizes.dart';
import 'package:shoes_ecommerce/constants/app_texts.dart';
import 'package:shoes_ecommerce/widgets/circle_icon_button.dart';
import 'package:shoes_ecommerce/widgets/gaps.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.paddingPage),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Discover',
              style: AppTexts.text7(color: AppColors.neutral600),
            ),
            const Row(
              children: [
                CircleIconButton('assets/icons/ic_search.png'),
                Gaps.h12,
                CircleIconButton('assets/icons/ic_notif.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
