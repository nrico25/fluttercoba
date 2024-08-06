import 'package:flutter/material.dart';
import 'package:projectfluter/mywidget/my_button.dart';
import 'package:projectfluter/mywidget/my_colors.dart';
import 'package:projectfluter/mywidget/my_textField.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Page",
          style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            MyTextField(
                hintText: "Username",
                textStyle: TextStyle(color: textColor),
                isObsecure: false),
            MyTextField(
                hintText: "Passwor9",
                textStyle: TextStyle(color: textColor),
                isObsecure: false),

            MyButton(textButton: "Login ", backgroundColor: secondaryColor, textColor: primaryColor, radius: 22, elevation: 5),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: const Text("Login dengan akun Google?"),
            )
          ],
        ),
      ),
    );
  }
}
