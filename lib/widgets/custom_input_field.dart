import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? label;
  final String? placeholder;
  final String? helperText;
  final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.label,
    this.placeholder,
    this.helperText,
    this.suffixIcon,
    this.icon,
    this.keyboardType,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: keyboardType == TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: label,
        hintText: placeholder,
        helperText: helperText,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        icon: icon != null ? Icon(icon) : null,
      ),
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return value.length < 3 ? 'Enter at least 3 characters' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
