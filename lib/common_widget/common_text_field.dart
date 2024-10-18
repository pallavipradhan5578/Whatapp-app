import 'package:flutter/material.dart';

class CommonTextField extends StatefulWidget {
  final String label;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final bool isPassword; // New parameter to check if it's a password field

  const CommonTextField({
    required this.label,
    this.validator,
    this.onSaved,
    this.isPassword = false, required TextStyle labelStyle, // Default is false
  });

  @override
  _CommonTextFieldState createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  bool _isObscured = true; // State to manage password visibility

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: widget.isPassword
            ? _isObscured
            : false, // Use obscure text for passwords
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade200,
          hintText: widget.label,
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none
          )
        )
    );
  }
}
