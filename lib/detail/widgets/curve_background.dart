import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce/shoe.dart';

class CurveBackground extends StatelessWidget {
  const CurveBackground({
    super.key,
    required this.shoe,
  });

  final Shoe shoe;
  static double height = 559.w;
  static double width = 550.w;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -0.45.sh,
          left: -42.w,
          height: height,
          width: width,
          child: Hero(
            tag: 'bg_${shoe.id}',
            child: Container(
              width: 1.sw,
              decoration: BoxDecoration(
                color: shoe.bgColor,
                borderRadius: BorderRadius.circular(height),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
