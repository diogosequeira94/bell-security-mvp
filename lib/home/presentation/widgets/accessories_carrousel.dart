import 'package:bell_security_app/home/presentation/widgets/accessory_tile.dart';
import 'package:flutter/material.dart';

class AccessoriesCarrousel extends StatelessWidget {
  const AccessoriesCarrousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController _pageController =
        PageController(viewportFraction: 0.0);
    int _currentPage = 0;
    var _listSlide = [
      {'id': 0, 'image': 'assets/ring.jpg'},
      {'id': 1, 'image': 'assets/pendant.jpg'},
      {'id': 2, 'image': 'assets/bracelet.jpg'},
    ];
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
