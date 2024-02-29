import 'package:flutter/material.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';

class Shoe {
  final String name;
  final String price;
  final String image;
  final Color bgColor;

  Shoe({
    required this.name,
    required this.price,
    required this.image,
    required this.bgColor,
  });

  static List<Shoe> get samples => [
        Shoe(
          name: 'HYPERSONIC',
          price: 'IDR 1,199,000',
          image: 'assets/images/big_shoe1.png',
          bgColor: AppColors.secondary,
        ),
        Shoe(
          name: 'HYPERSONIC',
          price: 'IDR 1,199,000',
          image: 'assets/images/big_shoe2.png',
          bgColor: AppColors.tertiary,
        ),
        Shoe(
          name: 'HYPERSONIC',
          price: 'IDR 1,199,000',
          image: 'assets/images/big_shoe3.png',
          bgColor: AppColors.neutral400,
        ),
      ];
}
