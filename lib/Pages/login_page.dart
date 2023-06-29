// ignore_for_file: prefer_const_constructors, file_names, sort_child_properties_last, non_constant_identifier_names, unused_import, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool ChangeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        ChangeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: ChangeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: ChangeButton? Icon(Icons.done,color: Colors.white,) 
                      : Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(ChangeButton ? 50 : 8)),
                    ),
                  ),
                  //ElevatedButton(
                  //  child: Text("Login"),
                  //  style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                  //  onPressed: () {
                  //    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //  },
                  //)
                ],
              ),
            ),
          ],
        ));
  }
}
