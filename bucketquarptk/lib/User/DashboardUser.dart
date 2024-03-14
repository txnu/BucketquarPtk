import 'package:bucketquarptk/User/Screen/AccountScreen.dart';
import 'package:bucketquarptk/User/Screen/HomeScreen.dart';
import 'package:bucketquarptk/User/Screen/NotificationScreen.dart';
import 'package:bucketquarptk/User/Widget/HomeAppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Screen/TrackingScreen.dart';

class DashboardUser extends StatefulWidget {
  const DashboardUser({super.key});

  @override
  State<DashboardUser> createState() => _DashboardUserState();
}

class _DashboardUserState extends State<DashboardUser> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: HomeAppBar(),
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          TrackingScreen(),
          NotificationScreen(),
          AccountScreen()
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.pink,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.pink,
            gap: 7,
            padding: EdgeInsets.all(18),
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              if (index == 1) {
                TrackingScreen();
              } else if (index == 2) {
                NotificationScreen();
              } else if (index == 3) {
                AccountScreen();
              }
              setState(() {
                _selectedIndex = index;
              });
            },
            tabs: const [
              GButton(icon: Icons.home, text: "Home"),
              GButton(icon: Icons.location_on, text: "Tracking"),
              GButton(icon: Icons.notification_add, text: "Notification"),
              GButton(icon: Icons.manage_accounts, text: "Account"),
            ],
          ),
        ),
      ),
    );
  }
}
