import 'package:flutter/material.dart';
import 'package:projectsystem/screens/Welcome/Login/loginScreen.dart';
import 'package:projectsystem/screens/adminFeatures/adminALscreen/adminALscreen.dart';
import 'package:projectsystem/screens/adminFeatures/adminDBscreen/adminDBscreen.dart';
import 'package:projectsystem/screens/adminFeatures/adminNLscreen/adminNMscreen.dart';

class adminNLscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3e9a71),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0)),
              border: Border.all(color: Color(0xff000000), width: 1),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image(
                      image:
                          AssetImage("assets/images/logo (black)clear BG.png"),
                      height: 30,
                      width: 170,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0x00000000),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.person,
                            color: Color(0xff000000),
                            size: 24,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => adminDBscreen(),
                            ));
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0x00000000),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.list,
                            color: Color(0xff000000),
                            size: 24,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => adminALscreen(),
                            ));
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0x00000000),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.notifications,
                            color: Color(0xff000000),
                            size: 24,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => adminNLscreen(),
                            ));
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0x00000000),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.logout,
                            color: Color(0xff000000),
                            size: 24,
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Logout Confirmation'),
                                  content:
                                      Text('Are you sure you want to logout?'),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('Cancel'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    TextButton(
                                      child: Text('Logout'),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => LoginPage(),
                                        ));
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                    child: Text(
                      "NOTIFICATION",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 10,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xff000000),
                    height: 15,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                  ),
                  MaterialButton(
                    child: Container(
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0x00000000),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(0),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(100.0),
                                border: Border.all(
                                    color: Color(0xff000000), width: 1),
                              ),
                              child: Container(
                                height: MediaQuery.of(context).size.width,
                                width: MediaQuery.of(context).size.width,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset("assets/images/5856.jpg",
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "username",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  Text(
                                    "notification details",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => adminNMscreen(),
                      ));
                    },
                  ),
                  Divider(
                    color: Color(0xff000000),
                    height: 16,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                  ),
                  MaterialButton(
                    child: Container(
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0x00000000),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(0),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(100.0),
                                border: Border.all(
                                    color: Color(0xff000000), width: 1),
                              ),
                              child: Container(
                                height: MediaQuery.of(context).size.width,
                                width: MediaQuery.of(context).size.width,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset("assets/images/5856.jpg",
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "username",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  Text(
                                    "notification details",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => adminNMscreen(),
                      ));
                    },
                  ),
                  Divider(
                    color: Color(0xff808080),
                    height: 16,
                    thickness: 0,
                    indent: 0,
                    endIndent: 0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
