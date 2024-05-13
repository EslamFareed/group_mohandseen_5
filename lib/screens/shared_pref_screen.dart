import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefScreen extends StatefulWidget {
  const SharedPrefScreen({super.key});

  @override
  State<SharedPrefScreen> createState() => _SharedPrefScreenState();
}

class _SharedPrefScreenState extends State<SharedPrefScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Pref"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              var prefs = await SharedPreferences.getInstance();

              prefs.setString("name", "Ahmed");
            },
            child: const Text("Set Value"),
          ),
          ElevatedButton(
            onPressed: () async {
              var prefs = await SharedPreferences.getInstance();

              print(prefs.getString("name"));
            },
            child: const Text("Get Value"),
          ),
          ElevatedButton(
            onPressed: () async {
              var prefs = await SharedPreferences.getInstance();
              prefs.remove("name");

              prefs.clear();
              },
            child: const Text("Remove Value"),
          ),
        ],
      ),
    );
  }
}
