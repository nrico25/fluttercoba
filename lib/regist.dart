import 'package:flutter/material.dart';

class Regist_bobobox extends StatefulWidget {
  const Regist_bobobox({super.key});

  @override
  State<Regist_bobobox> createState() => _Regist_boboboxState();
}

class _Regist_boboboxState extends State<Regist_bobobox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 48.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create an Account",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Subtitle
              Text(
                "We will send you an email with 4-digit verification code to make sure that this account really belongs to you",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 30),

              // Email TextField
              Text(
                "Full name"
              ),
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
                hintText: "Bobobo",
              ),
            ),
          ),

              // Password TextField
              Text(
                  "Email address"
              ),
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
                    hintText: "zzzzzz@gmail.com",
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Sign In Button
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Register"),
                  style: ElevatedButton.styleFrom(textStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),

                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,

                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                alignment: Alignment.center,
                child: RichText(
                  text: const TextSpan(
                    text: 'By registering, I agree with ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: 'Terms & Condition',
                        style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.w600
                        )
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.w600
                          )
                      ),
                      TextSpan(text: ' from Bobobox.'),
                    ]
                  )
                ),
              ),

              /*children: <Widget>[
                    Text(
                      "By registering, I agree with",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.teal, // Color of the text
                      ),
                      child: Text(
                        "Terms & Condition",
                        style: TextStyle(
                          decorationColor: Colors.teal, // Underline the text
                        ),
                      ),
                    ),
                    Text(
                      "and",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.teal, // Color of the text
                      ),
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(
                          decorationColor: Colors.teal, // Underline the text
                        ),
                      ),
                    ),
                    Text(
                      "From Bobobox.",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],*/

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
                  label: Text('Sign up with Apple'),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                    ),
                    minimumSize: Size(double.infinity, 45),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Sign in with Phone Number Button
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Register with phone number'),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    minimumSize: Size(double.infinity, 45),
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
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "login");
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.teal, // Color of the text
                      ),
                      child: Text(
                        "Login",
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
