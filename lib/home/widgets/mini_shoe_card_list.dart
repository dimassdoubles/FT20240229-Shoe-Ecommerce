import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/constants/app_texts.dart';
import 'package:shoes_ecommerce/home/widgets/gaps.dart';
import 'package:shoes_ecommerce/home/widgets/mini_shoe_card.dart';

class MiniShoeCardList extends StatelessWidget {
  const MiniShoeCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'More',
                style: AppTexts.text5(color: AppColors.neutral600),
              ),
              Image.asset(
                'assets/icons/ic_arrow_black.png',
                width: 21.w,
                height: 8.w,
              ),
            ],
          ),
          Gaps.v8,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MiniShoeCard(
                name: 'HYPERBLAST ENCORE',
                price: 'RP 549,000',
                shoe: 'assets/images/mini_shoe1.jpeg',
              ),
              MiniShoeCard(
                name: 'HYPERBLAST 1.3',
                price: 'RP 599,000',
                shoe: 'assets/images/mini_shoe2.jpeg',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
