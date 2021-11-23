import 'package:bell_security_app/bottom_navigation_bar/bloc/bottom_navigation_bar_bloc.dart';
import 'package:bell_security_app/home/presentation/home_page.dart';
import 'package:bell_security_app/map/map_page.dart';
import 'package:bell_security_app/profile/profile_page.dart';
import 'package:bell_security_app/settings/settings_overview_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    final _items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.map_outlined, size: 30),
      Icon(Icons.person, size: 30),
      Icon(Icons.settings, size: 30),
    ];
    return Scaffold(
      extendBody: true,
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
          } else if (state is BottomNavigationMapPageLoaded) {
            return MapPage();
          } else if (state is BottomNavigationSettingsPageLoaded) {
            return AccountOverviewPage();
          } else {
            return Container();
          }
        },
      ),
      bottomNavigationBar:
          BlocBuilder<BottomNavigationBarBloc, BottomNavigationBarState>(
              builder: (context, state) {
        return CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          items: _items,
          onTap: (index) {
            if (index == 0) {
              context
                  .read<BottomNavigationBarBloc>()
                  .add(BottomNavigationHomePagePressed());
            }
            if (index == 1) {
              context
                  .read<BottomNavigationBarBloc>()
                  .add(BottomNavigationMapPagePressed());
            }
            if (index == 2) {
              context
                  .read<BottomNavigationBarBloc>()
                  .add(BottomNavigationProfilePagePressed());
            }
            if (index == 3) {
              context
                  .read<BottomNavigationBarBloc>()
                  .add(BottomNavigationSettingsPagePressed());
            }
          },
        );
      }),
    );
  }
}
