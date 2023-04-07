import 'package:flutter/material.dart';
import 'package:sqflite_login_signup/screens/login_signup.dart';

void main() {
  runApp( MyApp(),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  Login_Signup(),
    );
  }
}
