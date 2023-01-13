// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class VerticalContainer extends StatefulWidget {
  const VerticalContainer({Key? key}) : super(key: key);

  @override
  State<VerticalContainer> createState() => _VerticalContainerState();
}

class _VerticalContainerState extends State<VerticalContainer> {
  bool iconsButton = true;
  Map TextList = {
    "Text_data": [
      {
        "house": 'Bridgeland Modern \nHouse',
        "rating": '⭐️ 4.9',
        "price": '\$ 260',
        "image_path": 'assets/images/Shape_one.png',
      },
      {
        "house": 'Wayside Modern\nHouse',
        "rating": '⭐️ 4.4',
        "price": '\$ 220',
        "image_path": 'assets/images/Shape_two.png',
      },
      {
        "house": 'Shoolview House',
        "rating": '⭐️ 4.6',
        "price": '\$ 245',
        "image_path": 'assets/images/Shape_three.png',
      },
      {
        "house": 'Bridgeland Modern \nHouse',
        "rating": '⭐️ 4.9',
        "price": '\$ 260',
        "image_path": 'assets/images/Shape_one.png',
      },
      {
        "house": 'Wayside Modern\nHouse',
        "rating": '⭐️ 4.4',
        "price": '\$ 220',
        "image_path": 'assets/images/Shape30.png',
      },
      {
        "house": 'Shoolview House',
        "rating": '⭐️ 4.6',
        "price": '\$ 245',
        "image_path": 'assets/images/Shape_three.png',
      },
    ],
  };
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 299,
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, index) => Container(
            height: 300,
            width: 190,
            decoration: BoxDecoration(
              color: const Color(0xffF5F4F8),
              // color: Colors.black12,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 190,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(TextList["Text_data"][index]["image_path"]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xff8BC83F),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              color: const Color(0xffffffff),
                              icon: Icon(
                                iconsButton ? Icons.favorite_border_outlined : Icons.favorite_outlined,
                              ),
                              // disabledColor: Colors.white,
                              isSelected: true,
                              hoverColor: Colors.blueAccent,
                              // splashColor: Colors.white,
                              splashRadius: 20,
                              iconSize: 20,
                              onPressed: () {
                                iconsButton = !iconsButton;
                                setState(() {});
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              height: 35,
                              width: 90,
                              decoration: BoxDecoration(
                                color: const Color(0xff234F68),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    // '\$ 260',
                                    TextList["Text_data"][index]["price"],
                                    style: const TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: height / 60),
                                    child: const Text(
                                      '/month',
                                      style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                  width: 170,
                  // color: Colors.blue,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            // 'Sky Dandelions \nApartment',
                            TextList["Text_data"][index]["house"],
                            style: const TextStyle(
                              color: Color(0xff252B5C),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            // overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3),
                            child: Text(
                              // '⭐️ 4.9',
                              TextList["Text_data"][index]["rating"],
                              style: const TextStyle(
                                color: Color(0xff53587A),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(3),
                            child: Icon(
                              Icons.location_on,
                              size: 18,
                              color: Color(0xff234F68),
                            ),
                          ),
                          const Text(
                            'Bali, Indonesia',
                            style: TextStyle(
                              color: Color(0xff53587A),
                            ),
                          ),
                        ],
                      ),
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
