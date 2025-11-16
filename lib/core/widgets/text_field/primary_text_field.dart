import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PrimaryTextField extends StatelessWidget {
  final String labelText;
  final TextInputType? textInputType;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const PrimaryTextField({
    super.key,
    this.validator,
    this.controller,
    this.inputFormatters,
    required this.labelText,
    this.onChanged,
    this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
      controller: controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
        label: Text(labelText),
      ),
    );
  }
}
