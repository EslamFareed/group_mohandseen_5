import 'package:flutter/material.dart';
import 'package:flutter_application_6/screens/bottom_nav_screen.dart';
import 'package:flutter_application_6/screens/home_screen.dart';
import 'package:flutter_application_6/screens/login_screen.dart';
import 'package:flutter_application_6/screens/screen1.dart';
import 'package:flutter_application_6/screens/tab_bar_screen.dart';

import 'screens/shared_pref_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SharedPrefScreen(),
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
      // routes: {
      //   "home": (context) => const HomeScreen(),
      //   "login": (context) => const LoginScreen(),
      // },
      // initialRoute: "home",
    );
  }
}
