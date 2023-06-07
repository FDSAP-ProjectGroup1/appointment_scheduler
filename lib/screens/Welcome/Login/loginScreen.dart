import 'package:flutter/material.dart';
import 'package:projectsystem/screens/Welcome/Login/loginimage.dart';
import 'package:provider/provider.dart';

import '../../../provider/login_provider.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginProvider>(
      create: (context) => LoginProvider(),
      child: Consumer<LoginProvider>(
        builder: (context, loginProvider, _) => Scaffold(
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
                Expanded(
                  child: Column(
                    children: [
                      LoginImage(),
                      SizedBox(height: 16),
                      SingleChildScrollView(
                        child: Container(
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
                                    borderSide: BorderSide(
                                        color: Color(0xff000000), width: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                    borderSide: BorderSide(
                                        color: Color(0xff000000), width: 1),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                    borderSide: BorderSide(
                                        color: Color(0xff000000), width: 1),
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
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 12),
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
                                    borderSide: BorderSide(
                                        color: Color(0xff000000), width: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                    borderSide: BorderSide(
                                        color: Color(0xff000000), width: 1),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                    borderSide: BorderSide(
                                        color: Color(0xff000000), width: 1),
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
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 12),
                                ),
                              ),
                              MaterialButton(
                                onPressed: () => loginProvider.login(
                                    context,
                                    emailController.text,
                                    passwordController.text),
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
