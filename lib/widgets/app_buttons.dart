import 'package:bell_security_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  String text;
  IconData? icon;
  final Color color;
  final Color backgroundColor;
  final double size;
  final Color borderColor;
  bool isIcon;

  AppButtons({
    Key? key,
    this.isIcon = false,
    this.text = "",
    this.icon,
    required this.color,
    required this.backgroundColor,
    required this.size,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: Center(
        child: !isIcon
            ? AppText(
                text: text,
                color: color,
              )
            : Icon(
                icon,
                color: color,
              ),
      ),
    );
  }
}
