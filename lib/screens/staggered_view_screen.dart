import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CommonStaggeredViewScreen extends StatefulWidget {
  const CommonStaggeredViewScreen({Key? key}) : super(key: key);

  @override
  State<CommonStaggeredViewScreen> createState() => _CommonStaggeredViewScreenState();
}

class _CommonStaggeredViewScreenState extends State<CommonStaggeredViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StaggeredGrid.count(
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
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final int index;
  const Tile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
