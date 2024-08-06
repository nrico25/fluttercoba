import 'package:flutter/material.dart';
import 'package:projectfluter/login_page.dart';
import 'package:projectfluter/loginbobobox.dart';
import 'package:projectfluter/regist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Loginpage(),
      // routes: {
      //   "login": (context) => const Login_bobobox(),
      //   "register": (context) => const Regist_bobobox(),
      // }
    );
  }
}


