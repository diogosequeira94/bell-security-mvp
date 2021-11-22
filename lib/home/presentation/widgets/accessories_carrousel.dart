import 'package:bell_security_app/home/presentation/widgets/accessory_tile.dart';
import 'package:flutter/material.dart';

class AccessoriesCarrousel extends StatefulWidget {
  const AccessoriesCarrousel({Key? key}) : super(key: key);

  @override
  _AccessoriesCarrouselState createState() => _AccessoriesCarrouselState();
}

class _AccessoriesCarrouselState extends State<AccessoriesCarrousel> {
  @override
  Widget build(BuildContext context) {
    final PageController _pageController =
        PageController(viewportFraction: 0.8);
    int _currentPage = 0;
    var _listSlide = [
      {'id': 0, 'image': 'assets/ring.jpg'},
      {'id': 1, 'image': 'assets/pendant.jpg'},
      {'id': 2, 'image': 'assets/bracelet.jpg'},
    ];

    @override
    void initState() {
      super.initState();
      _pageController.addListener(() {
        print(_pageController.page!.round());
      });
    }

    return SafeArea(
        child: Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: 3,
            itemBuilder: (_, currentIndex) {
              return AccessoryTile(
                  image: _listSlide[currentIndex]['image'].toString());
            },
          ),
        ),
        _buildBullets(),
      ],
    ));
  }

  Widget _buildBullets() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blueAccent,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey,
            ),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
