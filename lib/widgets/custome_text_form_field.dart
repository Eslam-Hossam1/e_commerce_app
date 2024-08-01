import 'package:flutter/material.dart';

class CustomeTextFormField extends StatelessWidget {
  const CustomeTextFormField({
    super.key,
    this.onTap,
    required this.hintText,
  });
  final String hintText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == '' || value == null) {
          return "this field required";
        } else {
          return null;
        }
      },
      onTap: onTap,
      decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(borderSide: BorderSide())),
    );
  }
}
