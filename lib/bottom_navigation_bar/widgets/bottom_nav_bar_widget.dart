import 'package:bell_security_app/bottom_navigation_bar/bloc/bottom_navigation_bar_bloc.dart';
import 'package:bell_security_app/home/presentation/home_page.dart';
import 'package:bell_security_app/profile/profile_page.dart';
import 'package:bell_security_app/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavigationBarBloc, BottomNavigationBarState>(
        builder: (context, state) {
          if (state is BottomNavigationHomePageLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is BottomNavigationHomePageLoaded) {
            return HomePage();
          } else if (state is BottomNavigationProfilePageLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is BottomNavigationProfilePageLoaded) {
            return ProfilePage();
          } else if (state is BottomNavigationSettingsPageLoaded) {
            return SettingsPage();
          } else {
            return Container();
          }
        },
      ),
      bottomNavigationBar:
          BlocBuilder<BottomNavigationBarBloc, BottomNavigationBarState>(
              builder: (context, state) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Theme.of(context).accentColor,
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              backgroundColor: Theme.of(context).accentColor,
              label: 'Settings',
            ),
          ],
          onTap: (index) {
            if (index == 0) {
              context
                  .read<BottomNavigationBarBloc>()
                  .add(BottomNavigationHomePagePressed());
            }
            if (index == 1) {
              context
                  .read<BottomNavigationBarBloc>()
                  .add(BottomNavigationProfilePagePressed());
            }
            if (index == 2) {
              context
                  .read<BottomNavigationBarBloc>()
                  .add(BottomNavigationSettingsPagePressed());
            }
            setState(() {
              _currentIndex = index;
            });
          },
        );
      }),
    );
  }
}
