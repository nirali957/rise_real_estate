import 'package:flutter/material.dart';

class CommonTabBar extends StatelessWidget {
  final TabController? tabController;
  const CommonTabBar({Key? key, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 120,
      decoration: const BoxDecoration(
        color: Color(0xffF5F4F8),
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: TabBar(
        controller: tabController,
        indicator: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        isScrollable: true,
        mouseCursor: MaterialStateMouseCursor.clickable,
        splashBorderRadius: const BorderRadius.all(Radius.circular(20)),
        splashFactory: InkRipple.splashFactory,
        indicatorWeight: double.minPositive,
        padding: const EdgeInsetsDirectional.all(7),
        labelStyle: const TextStyle(fontSize: 10),
        tabs: const [
          Tab(
            icon: Icon(
              Icons.grid_view_rounded,
              color: Color(0xffA1A5C1),
              size: 20,
            ),
          ),
          Tab(
            icon: Image(
              image: AssetImage('assets/icon_images/Horizontal - Active_one.png'),
            ),
          ),
        ],
      ),
    );
  }
}
