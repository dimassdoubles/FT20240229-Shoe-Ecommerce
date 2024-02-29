import 'package:flutter/material.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/shoe.dart';
import 'package:shoes_ecommerce/home/widgets/big_shoe_card.dart';

class BigShoePageView extends StatefulWidget {
  final PageController controller;
  final double currentPage;
  const BigShoePageView({
    super.key,
    required this.controller,
    required this.currentPage,
  });

  @override
  State<BigShoePageView> createState() => _BigShoePageViewState();
}

class _BigShoePageViewState extends State<BigShoePageView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: BigShoeCard.height + 32,
      child: PageView.builder(
        itemCount: Shoe.samples.length,
        controller: widget.controller,
        onPageChanged: (value) => debugPrint('onPageChanged $value'),
        itemBuilder: (context, index) {
          final percent = widget.currentPage - index;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
            transform: Matrix4.translationValues(
                widget.currentPage - index > 0.9 ? -50 : 0, 0, 0),
            child: BigShoeCard(
              shoe: Shoe.samples[index],
              percent: percent,
              bgColor:
                  index % 2 == 0 ? AppColors.tertiary : AppColors.secondary,
            ),
          );
        },
      ),
    );
  }
}
