import 'package:flutter/material.dart';

class AccessoriesCarrousel extends StatelessWidget {
  const AccessoriesCarrousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        Expanded(child: Container()),
        _buildBullets(),
      ],
    ));
  }

  Widget _buildBullets(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.red,
            ),
          )
        ],
      ),
    )
  }
}
