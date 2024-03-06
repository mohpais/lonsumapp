import 'package:flutter/material.dart';

class LonsumTextField extends StatefulWidget {
  final String? label;
  final String? hintText;
  const LonsumTextField({super.key, this.label, this.hintText});

  @override
  State<LonsumTextField> createState() => _LonsumTextFieldState();
}

class _LonsumTextFieldState extends State<LonsumTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(color: Colors.grey),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
    );
  }
}
