import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'login_screen.dart';
import 'screen1.dart';

class TabBarScreen extends StatelessWidget {
  TabBarScreen({super.key});

  List<Widget> screens = [
    HomeScreen(),
    LoginScreen(name: "name"),
    Screen1(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Tab Bar"),
          bottom: TabBar(
            indicatorColor: Colors.lightGreen,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                // text: "Home",
              ),
              Tab(
                icon: Icon(Icons.person),
                // text: "Profile",
              ),
              Tab(
                icon: Icon(Icons.settings),
                // text: "Settings",
              ),
            ],
          ),
        ),
        body: TabBarView(children: screens),
      ),
    );
  }
}
