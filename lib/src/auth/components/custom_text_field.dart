import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isObscure;
  const CustomTextField({
    super.key,
    required this.label,
    required this.icon,
    this.isObscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: isObscure,
        decoration: InputDecoration(
          isDense: true, //assim ocupa menos espaco na tela
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          labelText: label,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
