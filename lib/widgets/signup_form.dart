import 'package:flutter/material.dart';
import 'package:e_commerce_app/helper/add_space.dart';
import 'package:e_commerce_app/widgets/custome_elevated_button.dart';
import 'package:e_commerce_app/widgets/custome_obsecure_text_form_field.dart';
import 'package:e_commerce_app/widgets/custome_text_form_field.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.onUserInteraction;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Username",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              addHieghtSpace(8),
              CustomeTextFormField(
                hintText: "Username",
              ),
              addHieghtSpace(12),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              addHieghtSpace(8),
              CustomeTextFormField(
                hintText: "Email",
              ),
              addHieghtSpace(12),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              addHieghtSpace(8),
              CustomeObsecureTextFormField(
                hintText: "Password",
              ),
              addHieghtSpace(32),
              CustomeElevatedButton(
                text: "Sign Up",
              )
            ],
          ),
        ));
  }
}
