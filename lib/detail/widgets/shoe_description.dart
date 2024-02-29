
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/constants/app_texts.dart';
import 'package:shoes_ecommerce/detail/widgets/size_item.dart';
import 'package:shoes_ecommerce/home/widgets/gaps.dart';
import 'package:shoes_ecommerce/home/widgets/horizontal_tab_item.dart';
import 'package:shoes_ecommerce/shoe.dart';

class ShoeDescription extends StatelessWidget {
  const ShoeDescription({
    super.key,
    required this.shoe,
  });

  final Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: AppColors.neutral400,
                height: 41.w,
              ),
              Gaps.v8,
              Divider(
                thickness: 1.w,
                color: AppColors.neutral400,
              ),
              Gaps.v12,
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    shoe.name,
                    style: AppTexts.text6(
                      color: AppColors.neutral600,
                    ),
                  ),
                  HorizontalTabItem(
                    label: shoe.price,
                    isActive: true,
                  ),
                ],
              ),
              Gaps.v16,
              Text(
                'Ort-shoX merupakan teknologi pada insole yang didesain mengikuti kontur telapak kaki untuk mencegah cedera.',
                style: AppTexts.text2(
                    color: AppColors.neutral500),
              ),
              Gaps.v12,
              Text(
                'MORE DETAILS',
                style: AppTexts.text2(
                  color: AppColors.neutral600,
                ).copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
              Gaps.v24,
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Size',
                    style: AppTexts.text4(
                      color: AppColors.neutral600,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'UK',
                        style: AppTexts.text4(
                          color: AppColors.neutral600,
                        ),
                      ),
                      Gaps.h4,
                      Text(
                        'USA',
                        style: AppTexts.text4(
                          color: AppColors.neutral400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Gaps.v24,
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Gaps.h16,
              SizeItem(label: '5'),
              Gaps.h8,
              SizeItem(label: '6'),
              Gaps.h8,
              SizeItem(label: '7.5'),
              Gaps.h8,
              SizeItem(
                label: '8',
                isActive: true,
              ),
              Gaps.h8,
              SizeItem(
                label: '9.6',
              ),
              Gaps.h16,
            ],
          ),
        ),
      ],
    );
  }
}
