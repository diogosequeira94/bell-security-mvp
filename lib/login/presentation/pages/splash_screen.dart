import 'package:bell_security_app/login/presentation/pages/login_page.dart';
import 'package:bell_security_app/login/presentation/pages/login_page_facelift.dart';
import 'package:bell_security_app/login/utils/login_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    Future.delayed(Duration(seconds: 3), () {
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
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).buttonColor,
              Colors.green,
            ],
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                LoginStrings.appLogoCirclePath,
                width: 250.0,
                height: 250.0,
              ),
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bell',
                    style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.display1,
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                  const SizedBox(width: 24.0),
                  Image.asset(
                    LoginStrings.rainbowLogoPath,
                    width: 45.0,
                    height: 45.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
