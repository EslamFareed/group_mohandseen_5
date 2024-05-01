import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  DefaultTextField(
      {super.key,
      required this.controller,
      required this.icon,
      required this.label,
      required this.valid});

  TextEditingController controller;
  String label;
  IconData icon;
  String? Function(String?)? valid;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
      // validator: (value) {
      //   if (value!.length < 6) {
      //     return "Field length must be at least 6 chars";
      //   }
      // },
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, size: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
