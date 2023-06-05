import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projectsystem/screens/Dashboard/dashboardScreen.dart';
import 'package:projectsystem/screens/adminFeatures/adminNLscreen/adminNLscreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String errorMessage = '';

  Future<void> login(BuildContext context) async {
    final email = emailController.text;
    final password = passwordController.text;

    if (email == "admin@mail.com" && password == "adminpass123") {
      // Navigate to admin dashboard
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => adminNLscreen()),
          (route) => false);
    } else if (email == "user@mail.com" && password == "password") {
      // Navigate to admin dashboard
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => DashboardScreen()),
          (route) => false);
    } else {
      try {
        final response = await http.post(
          Uri.parse('http://127.0.0.1:8080/api/login'),
          body: jsonEncode({'email': email, 'password': password}),
          headers: {'Content-Type': 'application/json'},
        );

        if (response.statusCode == 200) {
          // Navigate to regular user home screen
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => DashboardScreen()),
              (route) => false);
        } else {
          final responseBody = jsonDecode(response.body);
          setState(() {
            errorMessage = responseBody['message'];
          });
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Login Failed'),
                content: Text(errorMessage),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        }
      } catch (e) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('An error occurred. Please try again later.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3d9970),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff212435),
                  size: 25,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Login",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 36,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0x00000000),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextField(
                    controller: emailController,
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                      filled: true,
                      fillColor: Color(0xffffffff),
                      isDense: false,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    ),
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                      filled: true,
                      fillColor: Color(0xffffffff),
                      isDense: false,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () => login(context),
                    color: Color(0xff000000),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    textColor: Color(0xffffffff),
                    height: 50,
                    minWidth: MediaQuery.of(context).size.width,
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
