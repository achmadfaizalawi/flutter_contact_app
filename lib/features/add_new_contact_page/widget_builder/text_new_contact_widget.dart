import 'package:flutter/material.dart';

class TextNewContactWidget extends StatelessWidget {
  
  final String? labelText;
  final dynamic submitted;
  final IconData iconWidget;
  final int maxLength;
  final TextInputType keyboardType;
  final dynamic validator;

  const TextNewContactWidget({
    required this.labelText,
    required this.submitted,
    required this.iconWidget,
    required this.maxLength, 
    required this.keyboardType,
    required this.validator, 
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: keyboardType,
        onFieldSubmitted: submitted,
        maxLength: maxLength,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          prefixIcon: Icon(iconWidget, color: Colors.blue),
          labelText: labelText,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.blue, width: 2)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ));
  }
}