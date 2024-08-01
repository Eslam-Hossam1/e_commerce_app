import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeObsecureTextFormField extends StatefulWidget {
  const CustomeObsecureTextFormField({
    super.key,
    this.onTap,
    required this.hintText,
  });
  final String hintText;
  final void Function()? onTap;

  @override
  State<CustomeObsecureTextFormField> createState() =>
      _CustomeObsecureTextFormFieldState();
}

class _CustomeObsecureTextFormFieldState
    extends State<CustomeObsecureTextFormField> {
  late bool isObsecure;
  @override
  void initState() {
    super.initState();
    isObsecure = true;
  }

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
      obscureText: isObsecure,
      onTap: widget.onTap,
      decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObsecure = !isObsecure;
              });
            },
            icon: Icon(
              isObsecure
                  ? CupertinoIcons.eye_slash_fill
                  : CupertinoIcons.eye_fill,
              color: Colors.black,
            ),
          ),
          hintText: widget.hintText,
          border: OutlineInputBorder(borderSide: BorderSide())),
    );
  }
}
