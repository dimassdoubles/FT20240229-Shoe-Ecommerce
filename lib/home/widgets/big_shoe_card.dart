import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/constants/app_texts.dart';
import 'package:shoes_ecommerce/detail/detail_page.dart';
import 'package:shoes_ecommerce/shoe.dart';

class BigShoeCard extends StatefulWidget {
  final Color bgColor;
  final Shoe shoe;
  final double percent;
  const BigShoeCard({
    super.key,
    required this.shoe,
    required this.bgColor,
    required this.percent,
  });

  static final double height = 240.w;
  static final width = 199.w;

  @override
  State<BigShoeCard> createState() => _BigShoeCardState();
}

class _BigShoeCardState extends State<BigShoeCard>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 800),
            reverseTransitionDuration: const Duration(milliseconds: 800),
            pageBuilder: (_, animation, __) => FadeTransition(
              opacity: animation,
              child: DetailPage(widget.shoe),
            ),
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            SizedBox(
              width: BigShoeCard.width,
              height: BigShoeCard.height,
            ),
            Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.0015)
                ..rotateY(pi * (-0.25 * widget.percent)),
              child: Hero(
                tag: 'bg_${widget.shoe.id}',
                child: Container(
                  width: 170.w,
                  height: BigShoeCard.height,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: widget.shoe.bgColor,
                    borderRadius: BorderRadius.circular(15.w),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ORTUSEIGHT',
                                style: AppTexts.text2(
                                  color: AppColors.neutral100,
                                ),
                              ),
                              Text(
                                widget.shoe.name,
                                style: AppTexts.text6(
                                  color: AppColors.neutral100,
                                ),
                              ),
                              Text(
                                'IDR 1,199,000',
                                style: AppTexts.text2(
                                  color: AppColors.neutral100,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/icons/ic_favorite_white.png',
                            fit: BoxFit.cover,
                            width: 21.w,
                            height: 21.w,
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 4),
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          'assets/icons/ic_arrow_white.png',
                          fit: BoxFit.cover,
                          width: 21.w,
                          height: 8.w,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.007)
                ..rotateY(pi * (-0.15 * widget.percent)),
              child: AnimatedRotation(
                duration: const Duration(milliseconds: 50),
                curve: Curves.fastOutSlowIn,
                turns: widget.percent <= 0
                    ? widget.percent * pi / 24
                    : widget.percent * pi / 150,
                child: Container(
                  width: BigShoeCard.width,
                  height: BigShoeCard.height,
                  alignment: Alignment.center,
                  child: Hero(
                    tag: 'image_${widget.shoe.image}',
                    child: Image.asset(
                      widget.shoe.image,
                      fit: BoxFit.cover,
                      width: BigShoeCard.width,
                      height: 181.w,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
