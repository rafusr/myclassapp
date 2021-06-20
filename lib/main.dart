import 'package:flutter/material.dart';
import 'package:my_class_app/login_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Class',
      theme: ThemeData(),
      home: LoginScreen(),
    );
  }
}