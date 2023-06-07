import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projectsystem/screens/Dashboard/dashboardScreen.dart';
import 'package:projectsystem/screens/adminFeatures/adminNLscreen/adminNLscreen.dart';

class LoginProvider extends ChangeNotifier {
  String errorMessage = '';

  Future<void> login(
      BuildContext context, String email, String password) async {
    if (email == "admin@mail.com" && password == "adminpass123") {
      // Navigate to admin dashboard
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => adminNLscreen()),
        (route) => false,
      );
    } else if (email == "user@mail.com" && password == "password") {
      // Navigate to regular user dashboard
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => DashboardScreen()),
        (route) => false,
      );
    } else {
      try {
        final loginData = {'username': email, 'password': password};
        final loginJson = jsonEncode(loginData);
        final response = await http.post(
          Uri.parse('http://192.168.0.186:8080/api/login'),
          body: loginJson,
          headers: {'Content-Type': 'application/json'},
        );

        if (response.statusCode == 200) {
          // Navigate to regular user dashboard
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => DashboardScreen()),
            (route) => false,
          );
        } else {
          final responseBody = jsonDecode(response.body);
          errorMessage = responseBody['message'];
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
}
