import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/constants/app_texts.dart';
import 'package:shoes_ecommerce/home/widgets/shoe_card_header.dart';

class MiniShoeCard extends StatelessWidget {
  final String shoe;
  final String name;
  final String price;
  const MiniShoeCard({
    super.key,
    required this.shoe,
    required this.name,
    required this.price,
  });

  static final double width = 130.w;
  static final double height = 148.w;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: AppColors.neutral100,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 50,
                color: const Color(0xffC1C1C1).withOpacity(0.05),
              ),
              BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 50,
                color: const Color(0xffC1C1C1).withOpacity(0.15),
              ),
            ],
          ),
        ),
        SizedBox(
          width: width,
          height: height,
          child: Image.asset(shoe),
        ),
        const ShoeCardHeader(),
        Container(
          width: width,
          height: height,
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 16,
          ),
          alignment: Alignment.bottomCenter,
          child: Text(
            '$name\n$price',
            textAlign: TextAlign.center,
            style: AppTexts.text1(
              color: AppColors.neutral600,
            ),
          ),
        ),
      ],
    );
  }
}
