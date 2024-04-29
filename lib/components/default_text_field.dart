import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  DefaultTextField(
      {super.key,
      required this.controller,
      required this.icon,
      required this.label});

  TextEditingController controller;
  String label;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
