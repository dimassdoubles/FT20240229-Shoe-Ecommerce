import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shoes_ecommerce/shoe.dart';

class ShoeImage extends StatelessWidget {
  const ShoeImage({
    super.key,
    required this.shoe,
  });

  final Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'image_${shoe.image}',
      child: AnimatedRotation(
        duration: const Duration(milliseconds: 300),
        turns: pi / 140,
        child: Image.asset(shoe.image),
      ),
    );
  }
}
