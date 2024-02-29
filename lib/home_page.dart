import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes_ecommerce/constants/app_colors.dart';
import 'package:shoes_ecommerce/widgets/big_shoe_page_view.dart';
import 'package:shoes_ecommerce/widgets/custom_app_bar.dart';
import 'package:shoes_ecommerce/widgets/gaps.dart';
import 'package:shoes_ecommerce/widgets/horizontal_tab_bar.dart';
import 'package:shoes_ecommerce/widgets/mini_shoe_card_list.dart';
import 'package:shoes_ecommerce/widgets/vertical_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 0.61);
  double currentPage = 0;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      setState(() {
        currentPage = controller.page ?? 0;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 1.sh,
            width: 1.sw,
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/curve_bg.png',
              fit: BoxFit.cover,
              width: 1.sw,
              height: 0.15.sh,
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const CustomAppBar(),
                    const HorizontalTabBar(),
                    Gaps.v8,
                    Stack(
                      children: [
                        const VerticalTabBar(),
                        BigShoePageView(
                          controller: controller,
                          currentPage: currentPage,
                        ),
                      ],
                    ),
                    Gaps.v16,
                    const MiniShoeCardList(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const _BottomNavBar(),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.neutral300,
      elevation: 0,
      selectedFontSize: 0,
      unselectedFontSize: 0,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/ic_home.png',
              height: 24.w,
              fit: BoxFit.cover,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/ic_favorite.png',
              height: 24.w,
              fit: BoxFit.cover,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/ic_gift.png',
              height: 24.w,
              fit: BoxFit.cover,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/ic_cart.png',
              height: 24.w,
              fit: BoxFit.cover,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/ic_user.png',
              height: 24.w,
              fit: BoxFit.cover,
            ),
            label: ''),
      ],
    );
  }
}
