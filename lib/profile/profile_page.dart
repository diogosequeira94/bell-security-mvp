import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: Theme.of(context).iconTheme,
        automaticallyImplyLeading: false,
        title: Text('Profile', style: TextStyle(color: Colors.black87)),
      ),
      body: Center(
        child: Text('Profile Page'),
      ),
    );
  }
}
