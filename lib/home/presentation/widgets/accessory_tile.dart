import 'package:flutter/material.dart';

class AccessoryTile extends StatelessWidget {
  final String? image;
  const AccessoryTile({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: 50.0, bottom: 100.0, right: 30.0, left: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image!),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black87, blurRadius: 30.0, offset: Offset(10, 10))
          ]),
    );
  }
}
