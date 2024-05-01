import 'package:flutter/material.dart';
import 'package:flutter_application_6/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "Hello World";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 1,
              width: 100,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.black),
            ),
            ElevatedButton(
              onPressed: () async {
                // Navigator.pushNamed(context, "login");
                String reValue = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginScreen(name: name),
                  ),
                );

                print(reValue);
              },
              child: const Text("Go to Login"),
            ),
          ],
        ),
      ),
    );
  }
}
