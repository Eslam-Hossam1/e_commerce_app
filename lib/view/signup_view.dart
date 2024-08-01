import 'package:flutter/material.dart';
import 'package:e_commerce_app/helper/add_space.dart';
import 'package:e_commerce_app/widgets/login_form.dart';
import 'package:e_commerce_app/widgets/svg_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          addHieghtSpace(32),
          Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300, shape: BoxShape.circle),
              child: Image.asset(
                "assets/icons8-buying-48.png",
              )),
          addHieghtSpace(8),
          ListTile(
            title: Text(
              "Sign Up",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Sign Up to continue using the app",
              style: TextStyle(color: Colors.grey.shade500),
            ),
          ),
          addHieghtSpace(8),
          LoginForm(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
            child: Row(
              children: [
                Expanded(
                    child: Divider(
                  endIndent: 10,
                )),
                Text("Or Sign Up With"),
                Expanded(
                    child: Divider(
                  indent: 10,
                ))
              ],
            ),
          ),
          addHieghtSpace(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgElevatedButton(
                svgImagePath: "assets/icons8-facebook.svg",
                color: Colors.blue,
              ),
              SvgElevatedButton(
                svgImagePath: "assets/icons8-google.svg",
              ),
              SvgElevatedButton(
                svgImagePath: "assets/icons8-apple.svg",
              ),
            ],
          ),
          addHieghtSpace(24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account? "),
              GestureDetector(
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
