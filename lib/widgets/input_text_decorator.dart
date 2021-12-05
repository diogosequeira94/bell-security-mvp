import 'package:flutter/material.dart';

InputDecoration inputTextDecorator(
    {required String labelText, String? errorText}) {
  return InputDecoration(
    labelText: labelText,
    errorText: errorText,
    contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
    filled: true,
    fillColor: Colors.white,
    focusColor: Colors.white,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(color: Colors.black26, width: 1.5),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(color: Colors.green, width: 1.5),
    ),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide(color: Colors.red, width: 1.5)),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(color: Colors.red, width: 1.5),
    ),
  );
}
