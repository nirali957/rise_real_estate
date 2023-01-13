import 'package:flutter/material.dart';

class HorizontalScreen extends StatefulWidget {
  const HorizontalScreen({Key? key}) : super(key: key);

  @override
  State<HorizontalScreen> createState() => _HorizontalScreenState();
}

class _HorizontalScreenState extends State<HorizontalScreen> {
  bool iconsButton = false;
  Map TextList = {
    "Text_data": [
      {
        "house": 'Flower Heaven House',
        "rating": '⭐️ 4.9',
        "price": '\$ 220',
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
      }
    ],
  };
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 170,
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F4F8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 150,
                            width: 135,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              image: DecorationImage(
                                image: AssetImage(TextList["Text_data"][index]["image_path"]),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color(0xff8BC83F),
                                      shape: BoxShape.circle,
                                    ),
                                    height: 40,
                                    width: 40,
                                    child: IconButton(
                                      color: Colors.white,
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
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff234F68),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Text(
                                      overflow: TextOverflow.fade,
                                      'Apartment',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            height: 150,
                            width: 130,
                            // color: Colors.yellowAccent,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 130,
                                      child: Text(
                                        TextList["Text_data"][index]["house"],
                                        // 'Sky Dandelions Apartment',
                                        overflow: TextOverflow.fade,
                                        style: const TextStyle(
                                          color: Color(0xff252B5C),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      // '⭐️ 4.9',
                                      TextList["Text_data"][index]["rating"],

                                      style: const TextStyle(
                                        color: Color(0xff53587A),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xff234F68),
                                      size: 16,
                                    ),
                                    Text(
                                      'Jakarta, Indonesia',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xff53587A),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 22,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      // '\$ 290',
                                      TextList["Text_data"][index]["price"],
                                      style: const TextStyle(
                                        color: Color(0xff252B5C),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 5),
                                      child: const Text(
                                        '/month',
                                        style: TextStyle(
                                          color: Color(0xff252B5C),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                        ),
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
              ],
            );
          },
        ),
      ),
    );
  }
}
