import 'package:e_commerce_app/helper/add_space.dart';
import 'package:e_commerce_app/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                  color: Colors.grey.shade400, shape: BoxShape.circle),
              child: Image.asset(
                "assets/icons8-buying-48.png",
              )),
          addHieghtSpace(24),
          ListTile(
            title: Text(
              "Login",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Login to continue using the app",
              style: TextStyle(color: Colors.grey.shade500),
            ),
          ),
          addHieghtSpace(32),
          LoginForm(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
            child: Row(
              children: [
                Expanded(
                    child: Divider(
                  endIndent: 10,
                )),
                Text("Or Login With"),
                Expanded(
                    child: Divider(
                  indent: 10,
                ))
              ],
            ),
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: Text('data')),
            ],
          )
        ],
      ),
    );
  }
}
