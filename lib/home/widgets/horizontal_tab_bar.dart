import 'package:flutter/material.dart';
import 'package:shoes_ecommerce/home/widgets/gaps.dart';
import 'package:shoes_ecommerce/home/widgets/horizontal_tab_item.dart';

class HorizontalTabBar extends StatelessWidget {
  const HorizontalTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Gaps.h16,
          HorizontalTabItem(label: 'Ortuseight', isActive: true),
          Gaps.h16,
          HorizontalTabItem(label: 'Patrobas'),
          Gaps.h16,
          HorizontalTabItem(label: 'Piero'),
          Gaps.h16,
          HorizontalTabItem(label: 'AeroStreet'),
          Gaps.h16,
        ],
      ),
    );
  }
}
