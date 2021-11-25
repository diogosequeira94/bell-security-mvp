import 'package:flutter/material.dart';

class AccessoryTile extends StatelessWidget {
  final String? image;
  const AccessoryTile({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50.0,
        bottom: 100.0,
        right: 40.0,
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image!),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black87,
                      blurRadius: 30.0,
                      offset: Offset(10, 10))
                ]),
          ),
          Positioned(
              bottom: 0,
                right: 0,
              child: Material(
            color: Colors.orangeAccent,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(36),
              bottomRight: Radius.circular(20),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              onTap: () {},
              child: const SizedBox(
                height: 70,
                width: 70,
                child: Icon(
                  Icons.settings,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
