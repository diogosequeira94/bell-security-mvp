import 'package:flutter/material.dart';
import 'login/presentation/pages/splash_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF249225),
        accentColor: Color(0xFF4FA64F),
      ),
      home: SplashScreen(),
    );
  }
}
