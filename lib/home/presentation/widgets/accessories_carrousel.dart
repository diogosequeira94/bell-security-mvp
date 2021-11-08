import 'package:flutter/material.dart';

class AccessoriesCarrousel extends StatelessWidget {
  const AccessoriesCarrousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
            child: PageView.builder(
                itemCount: 3,
                itemBuilder: (_, currentIndex) {
                  return Container(
                    color: Colors.blue,
                  );
                })),
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
              color: Colors.green,
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
