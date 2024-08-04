import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
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
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showText = false;

  @override
  void initState() {
    super.initState();
    showText = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: widget.isObscure ? showText : false,
        decoration: InputDecoration(
          isDense: true, //assim ocupa menos espaco na tela
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          labelText: widget.label,
          prefixIcon: Icon(widget.icon),
          suffixIcon: widget.isObscure
              ? IconButton(
                  icon: Icon(
                    showText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      showText = !showText;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
