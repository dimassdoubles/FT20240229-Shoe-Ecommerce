import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/detail/widgets/add_to_bag_button.dart';
import 'package:shoes_ecommerce/detail/widgets/curve_background.dart';
import 'package:shoes_ecommerce/detail/widgets/detail_app_bar.dart';
import 'package:shoes_ecommerce/detail/widgets/shoe_description.dart';
import 'package:shoes_ecommerce/detail/widgets/shoe_image.dart';
import 'package:shoes_ecommerce/shoe.dart';

class DetailPage extends StatelessWidget {
  final Shoe shoe;
  final Animation<double> animation;
  const DetailPage({
    super.key,
    required this.shoe,
    required this.animation,
  });

  Animation<double> get interval1 => CurvedAnimation(
        parent: animation,
        curve: const Interval(
          0.4,
          1,
          curve: Curves.easeIn,
        ),
      );
  Animation<double> get interval2 => CurvedAnimation(
        parent: animation,
        curve: const Interval(
          0.9,
          1,
          curve: Curves.easeIn,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral100,
      body: Stack(
        children: [
          SizedBox(
            height: 1.sh,
            width: 1.sw,
          ),
          CurveBackground(shoe: shoe),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SafeArea(
                        child: ShoeImage(shoe: shoe),
                      ),
                      Transform(
                        transform: Matrix4.translationValues(0, -30.w, 0),
                        child: ShoeDescription(
                          shoe: shoe,
                          animation: interval1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AddToBagButton(animation: interval2),
            ],
          ),
          const SafeArea(child: DetailAppBar()),
        ],
      ),
    );
  }
}
