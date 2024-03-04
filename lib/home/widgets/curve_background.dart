import 'package:flutter/material.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';

class CurveBackrgound extends StatelessWidget {
  const CurveBackrgound({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClip(),
      child: Container(
        color: AppColors.neutral300,
      ),
    );
  }
}

class CustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - size.height * 0.20);
    path.quadraticBezierTo(
      size.width / 2,
      size.height - size.height * 0.10,
      size.width,
      size.height - size.height * 0.20,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    // path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
