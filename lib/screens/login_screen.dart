import 'package:flutter/material.dart';
import 'package:flutter_application_6/components/default_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              DefaultTextField(
                  controller: nameController,
                  icon: Icons.person,
                  label: "Name"),
              const SizedBox(height: 20),
              DefaultTextField(
                  controller: emailController,
                  icon: Icons.email,
                  label: "Email"),
            ],
          ),
        ));
  }
}
