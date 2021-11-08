import 'package:bell_security_app/home/presentation/widgets/accessories_carrousel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Text('Home Page'),
      ),
      body: AccessoriesCarrousel(),
    );
  }
}
