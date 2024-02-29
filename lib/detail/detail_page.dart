import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/constants/app_texts.dart';
import 'package:shoes_ecommerce/detail/widgets/size_item.dart';
import 'package:shoes_ecommerce/home/widgets/gaps.dart';
import 'package:shoes_ecommerce/home/widgets/horizontal_tab_item.dart';
import 'package:shoes_ecommerce/shoe.dart';

class DetailPage extends StatelessWidget {
  final Shoe shoe;
  const DetailPage(this.shoe, {super.key});

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
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              color: shoe.bgColor,
              height: 1.sh,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(shoe.image),
                      Transform(
                        transform: Matrix4.translationValues(0, -30.w, 0),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    color: AppColors.neutral400,
                                    height: 41.w,
                                  ),
                                  Gaps.v8,
                                  Divider(
                                    thickness: 1.w,
                                    color: AppColors.neutral400,
                                  ),
                                  Gaps.v12,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        shoe.name,
                                        style: AppTexts.text6(
                                          color: AppColors.neutral600,
                                        ),
                                      ),
                                      HorizontalTabItem(
                                        label: shoe.price,
                                        isActive: true,
                                      ),
                                    ],
                                  ),
                                  Gaps.v16,
                                  Text(
                                    'Ort-shoX merupakan teknologi pada insole yang didesain mengikuti kontur telapak kaki untuk mencegah cedera.',
                                    style: AppTexts.text2(
                                        color: AppColors.neutral500),
                                  ),
                                  Gaps.v12,
                                  Text(
                                    'MORE DETAILS',
                                    style: AppTexts.text2(
                                      color: AppColors.neutral600,
                                    ).copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Gaps.v24,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Size',
                                        style: AppTexts.text4(
                                          color: AppColors.neutral600,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'UK',
                                            style: AppTexts.text4(
                                              color: AppColors.neutral600,
                                            ),
                                          ),
                                          Gaps.h4,
                                          Text(
                                            'USA',
                                            style: AppTexts.text4(
                                              color: AppColors.neutral400,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Gaps.v24,
                            const SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Gaps.h16,
                                  SizeItem(label: '5'),
                                  Gaps.h8,
                                  SizeItem(label: '6'),
                                  Gaps.h8,
                                  SizeItem(label: '7.5'),
                                  Gaps.h8,
                                  SizeItem(
                                    label: '8',
                                    isActive: true,
                                  ),
                                  Gaps.h8,
                                  SizeItem(
                                    label: '9.6',
                                  ),
                                  Gaps.h16,
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.w),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.neutral100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.w),
                    ),
                    padding: EdgeInsets.all(8.w),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'ADD TO BAG',
                      style: AppTexts.text3(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: shoe.bgColor,
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: Image.asset(
                          'assets/icons/ic_arrow_white.png',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Ortuseight',
                    style: AppTexts.text3(
                      color: AppColors.neutral100,
                    ),
                  ),
                  Container(
                    width: 24.w,
                    height: 24.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.neutral600.withOpacity(0.2),
                    ),
                    child: Image.asset(
                      'assets/icons/ic_favorite_white.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
    path.quadraticBezierTo(0.35 * w, 0.45 * h, w, 0.3 * h);
    path.lineTo(w, 0);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
