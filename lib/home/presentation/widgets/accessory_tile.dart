import 'package:flutter/material.dart';

class AccessoryTile extends StatelessWidget {
  const AccessoryTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(''),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}
