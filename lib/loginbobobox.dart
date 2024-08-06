import 'package:flutter/material.dart';

class Login_bobobox extends StatefulWidget {
  const Login_bobobox({super.key});

  @override
  State<Login_bobobox> createState() => _Login_boboboxState();
}

class _Login_boboboxState extends State<Login_bobobox> {

  bool _passShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 48.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/bobobox.png'),
              ),
              SizedBox(height: 10),

              Text(
                "Welcome to Bobobox",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Subtitle
              Text(
                'Sign in to get started',
                style: TextStyle(
                  fontSize: 16,
                    fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 30),

              Text(
                  "Email address",
                  style: TextStyle(color: Colors.grey),
              ),
              // Email TextField
              Container(
                margin: EdgeInsets.symmetric(vertical: 4),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.teal,
                            width: 2
                        )
                    ),
                    hintText: "Email address",
                  ),
                ),
              ),

              Text(
                  "Password",
                      style: TextStyle(color: Colors.grey),
              ),
              // Password TextField
              Container(
                margin: EdgeInsets.symmetric(vertical: 4),
                child: TextField(
                  obscureText: !_passShow,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.teal,
                            width: 2
                        )
                    ),
                    hintText: "Password",
                    suffixIcon: TextButton(
                      onPressed: () {
                        setState(() {
                          _passShow = !_passShow;
                        });
                      },
                      child: Text(
                        _passShow ? 'Hide' : 'Show',
                        style: TextStyle(color: Colors.teal, decoration: TextDecoration.underline, decorationColor: Colors.teal,),
                      ),
                    ),
                  ),
                ),
              ),

              // Forgot Password
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Forgot password?'),
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.teal,
                      fontWeight: FontWeight.w500,// Underline the text
                    ),
                    foregroundColor: Colors.teal,
                  ),
                ),
              ),

              // Sign In Button
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Sign in"),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                    minimumSize: Size(double.infinity, 45),
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Divider
              Row(
                children: [
                  Expanded(child: Divider(thickness: 1)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('or'),
                  ),
                  Expanded(child: Divider(thickness: 1)),
                ],
              ),
              SizedBox(height: 10),

              // Sign in with Apple Button
              Container(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.apple,
                    size: 20,
                  ),
                  label: Text('Sign in with Apple'),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                    minimumSize: Size(double.infinity, 45),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Sign in with Phone Number Button
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Sign in with phone number'),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                    minimumSize: Size(double.infinity, 50),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Register Link
              Container(
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "register");
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.teal, // Color of the text
                      ),
                      child: Text(
                        "Register",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.teal, // Underline the text
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
