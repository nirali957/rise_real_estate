import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:rise_real_estate/core/common_widgets/common_tabbar_screen.dart';
import 'package:rise_real_estate/screens/vertical_container_screen.dart';

import '../../core/common_widgets/common_text_field_.dart';
import 'horizontal_screen_container.dart';

class FeaturedEstateScreen extends StatefulWidget {
  const FeaturedEstateScreen({Key? key}) : super(key: key);

  @override
  State<FeaturedEstateScreen> createState() => _FeaturedEstateScreenState();
}

class _FeaturedEstateScreenState extends State<FeaturedEstateScreen> with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController!.animateTo(1, duration: const Duration(seconds: 2), curve: Curves.bounceIn);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    tabController!.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff252B5C),
            size: 18,
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(
                top: 16,
                right: 30,
                left: 16,
                bottom: 16,
              ),
              child: const Image(
                image: AssetImage(
                  'assets/icon_images/Setting.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: DefaultTabController(
            length: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const CommonStaggeredViewScreen(),
                StaggeredGrid.count(
                  crossAxisCount: 8,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: const [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 5,
                      mainAxisCellCount: 5,
                      child: Tile(index: 0),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 3,
                      child: Tile(index: 1),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 3,
                      child: Tile(index: 2),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                RichText(
                  textAlign: TextAlign.start,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Featured Estates',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          // height: 1.5,
                          color: Color(0xff252B5C),
                        ),
                      ),
                      TextSpan(
                        text: '\nOur recommended real estates exclusive for you.',
                        style: TextStyle(
                          color: Color(0xff252B5C),
                          height: 1.5,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                CommonTextField(
                  hintText: 'Search in featured estate',
                  prefixImage: 'assets/icon_images/search_image.png',
                  suffixImage: 'assets/icon_images/mic_icon.png',
                  textEditingController: searchController,
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '70',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              // height: 1.5,
                              color: Color(0xff252B5C),
                            ),
                          ),
                          TextSpan(
                            text: '\testates',
                            style: TextStyle(
                              color: Color(0xff252B5C),
                              height: 1.5,
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CommonTabBar(
                      tabController: tabController!,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: const [
                      VerticalContainer(),
                      HorizontalScreen(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final int index;
  const Tile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Map TextList = {
      "Text_data": [
        {
          "image_path": 'assets/images/image 27.png',
        },
        {
          "image_path": 'assets/images/image 28.png',
        },
        {
          "image_path": 'assets/images/image 29.png',
        }
      ],
    };
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        image: DecorationImage(
          image: AssetImage(TextList["Text_data"][index]["image_path"]),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
