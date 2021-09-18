import 'package:flutter/material.dart';
import 'package:nitw/screens/login_view.dart';
import 'package:nitw/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.deepOrange,
          splashColor: Colors.yellowAccent,
          buttonColor: Colors.deepOrangeAccent),
      home: LoginView(),
    );
  }
}
