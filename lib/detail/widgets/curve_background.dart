import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce/shoe.dart';

class CurveBackground extends StatelessWidget {
  const CurveBackground({
    super.key,
    required this.shoe,
  });

  final Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipPath(),
      child: Container(
        color: shoe.bgColor,
        height: 1.sh,
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    var path = Path();

    path.moveTo(0, 0.15 * h);
    path.quadraticBezierTo(0.5 * w, 0.5 * h, w, 0.3 * h);
    path.lineTo(w, 0);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
