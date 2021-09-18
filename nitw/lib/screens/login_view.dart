import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey _form

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Enter Credentials",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(hintText: "Email"),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(hintText: "Password"),
                  obscureText: true,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.orange,
                ),
                child: IconButton(
                  padding: EdgeInsets.symmetric(horizontal: 55, vertical: 20),
                  onPressed: () {
                    print("pressed");
                  },
                  icon: Icon(Icons.login_outlined),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
