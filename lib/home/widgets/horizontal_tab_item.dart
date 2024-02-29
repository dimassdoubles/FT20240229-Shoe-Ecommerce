import 'package:flutter/material.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/constants/app_texts.dart';

class HorizontalTabItem extends StatelessWidget {
  final String label;
  final bool isActive;
  const HorizontalTabItem({
    super.key,
    required this.label,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        gradient: isActive
            ? const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.6, 0.6001],
                colors: [
                  Colors.white,
                  AppColors.neutral300,
                ],
              )
            : null,
      ),
      child: Text(
        label,
        style: AppTexts.text5(
          color: isActive ? AppColors.neutral600 : AppColors.neutral400,
        ),
      ),
    );
  }
}
