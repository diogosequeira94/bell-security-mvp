import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class LoginButtonWidget extends StatelessWidget {
  final String? title;
  final Function? action;
  final bool enabled;
  final bool isLoading;
  final bool isAffirmative;

  const LoginButtonWidget({
    @required this.title,
    @required this.action,
    this.isLoading = false,
    this.enabled = true,
    this.isAffirmative = true,
  });

  @override
  Widget build(BuildContext context) {
    final colorsList = [
      Colors.red,
      Colors.deepOrangeAccent,
      Colors.yellow,
      Colors.green,
      Colors.blueAccent,
      Colors.deepPurple,
    ];
    return Align(
        alignment: Alignment.bottomCenter,
        child: InkWell(
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: enabled
                      ? [
                          isAffirmative
                              ? Theme.of(context).buttonColor
                              : Color(0xFF0b0b0d),
                          isAffirmative ? Colors.green : Color(0xFF1d1e22),
                        ]
                      : [Colors.grey, Colors.grey],
                ),
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            child: Center(
              child: isLoading
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.0,
                          width: 20.0,
                          child: CircularProgressIndicator(
                            strokeWidth: 3.0,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          title!,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  : Text(
                      title!,
                      style: TextStyle(color: Colors.white),
                    ),
            ),
          ),
          onTap: () => enabled && !isLoading ? action!() : null,
        ));
  }
}
