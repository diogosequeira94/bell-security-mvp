import 'package:bell_security_app/notification/presentation/notification_page.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_bar/widgets/bottom_nav_bar_widget.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed

    final args = settings.arguments;
    switch (settings.name) {
      // case '/':
      //   return MaterialPageRoute(builder: (_) => SplashScreen());
      // case '/onboarding':
      //   return MaterialPageRoute(builder: (_) => OnboardingScreen());
      // case '/login':
      //   return MaterialPageRoute(builder: (_) => SignInPage());
      // case '/register':
      //   return MaterialPageRoute(builder: (_) => RegisterPage());
      // case '/password-reset':
      //   return MaterialPageRoute(builder: (_) => PasswordResetPage());
      case '/notifications':
        return MaterialPageRoute(builder: (_) => NotificationPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
