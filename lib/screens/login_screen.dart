import 'package:flutter/material.dart';
import 'package:flutter_application_6/components/default_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key, required this.name});

  String name;

  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  var _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, nameController.text);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Form(
          key: _key,
          child: Column(
            children: [
              DefaultTextField(
                controller: nameController,
                icon: Icons.person,
                label: "Name",
                valid: (value) {
                  if (value!.length < 6) {
                    return "Name must be more than 6 chars";
                  }
                },
              ),
              const SizedBox(height: 20),
              DefaultTextField(
                controller: emailController,
                icon: Icons.email,
                label: "Email",
                valid: (value) {
                  if (value!.length < 6) {
                    return "Email must be more than 6 chars";
                  }
                },
              ),
              MaterialButton(
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    print("Success");
                  } else {
                    print("error");
                  }
                },
                color: Colors.deepOrange,
                textColor: Colors.white,
                child: const Text("login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
