import 'package:flutter/material.dart';
import 'package:nitw/screens/librarian_view.dart';
import 'package:nitw/screens/login_view.dart';
import 'package:nitw/screens/student_view.dart';
import 'package:nitw/screens/warden_view.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/login": (context) => LoginView(),
        "/student": (context) => StudentView(),
        "/librarian": (context) => LibrarianView(),
        "/warden": (context) => WardenView()
      },
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text("You are "),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepOrangeAccent),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed((context), "/login",
                          arguments: LoginView());
                    },
                    child: Text(
                      "Student",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepOrangeAccent),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed((context), "/login",
                          arguments: LoginView());
                    },
                    child: Text(
                      "Librarian",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepOrangeAccent),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed((context), "/login",
                          arguments: LoginView());
                    },
                    child: Text(
                      "Warden",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
