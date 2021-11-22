import 'package:bell_security_app/home/presentation/widgets/accessories_carrousel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: Theme.of(context).iconTheme,
        automaticallyImplyLeading: false,
        title: Text('Bell', style: TextStyle(color: Colors.black87)),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black54,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/notifications');
              }),
          IconButton(
              icon: Icon(Icons.add, color: Colors.black54), onPressed: () {}),
        ],
      ),
      body: AccessoriesCarrousel(),
    );
  }
}
