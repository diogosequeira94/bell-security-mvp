import 'package:bell_security_app/login/presentation/pages/login_page.dart';
import 'package:bell_security_app/login/utils/login_strings.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              LoginStrings.appLogoCirclePath,
              width: 200.0,
              height: 200.0,
            ),
            const SizedBox(height: 16.0),
            Text('Bell'),
          ],
        ),
      ),
    );
  }
}
