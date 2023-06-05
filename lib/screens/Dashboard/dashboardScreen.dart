import 'package:flutter/material.dart';
import 'package:projectsystem/screens/Dashboard/Appointment/addScreen.dart';
import 'package:projectsystem/screens/Dashboard/Notification/notifScreen.dart';
import 'package:projectsystem/screens/Dashboard/Search/searchScreen.dart';
import 'package:projectsystem/screens/Dashboard/Search/viewScreen.dart';

import 'Profile/profileScreen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3e9a71),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                color: Color(0xff3e9a71),
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
                        image: AssetImage(
                            "assets/images/logo (black)clear BG.png"),
                        height: 30,
                        width: 180,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              Icons.home,
                              color: Color(0xff000000),
                              size: 24,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DashboardScreen(),
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
                              Icons.search,
                              color: Color(0xff000000),
                              size: 24,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => searchScreen(),
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
                              Icons.add,
                              color: Color(0xff000000),
                              size: 24,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => addScreen(),
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
                                builder: (context) => notifScreen(),
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
                              Icons.person,
                              color: Color(0xff000000),
                              size: 24,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => profileScreen(),
                              ));
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
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Dashboard",
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
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      padding: EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Color(0x00000000),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "APPOINTMENT'S TODAY",
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
                          MaterialButton(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 0),
                              padding: EdgeInsets.all(0),
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                    color: Color(0xff000000), width: 1),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(0),
                                    padding: EdgeInsets.all(0),
                                    width: MediaQuery.of(context).size.width,
                                    height: 127,
                                    decoration: BoxDecoration(
                                      color: Color(0xffdadada),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "01",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 50,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                        Text(
                                          "Jan",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(0),
                                    padding: EdgeInsets.all(0),
                                    width: MediaQuery.of(context).size.width,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: Color(0x00ffffff),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0)),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 0, horizontal: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                              border: Border.all(
                                                  color: Color(0xff000000),
                                                  width: 1),
                                            ),
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.asset(
                                                  "assets/images/5856.jpg",
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 0, 0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
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
                                                  "sample@email",
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
                                ],
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => viewScreen(),
                              ));
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "BROWSE ALL",
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
                    ),
                    MaterialButton(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                        padding: EdgeInsets.all(0),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10.0),
                          border:
                              Border.all(color: Color(0xff000000), width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(0),
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0xffdadada),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "01",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 30,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  Text(
                                    "Jan",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                                    "sample@email",
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
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => viewScreen(),
                        ));
                      },
                    ),
                    MaterialButton(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                        padding: EdgeInsets.all(0),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10.0),
                          border:
                              Border.all(color: Color(0xff000000), width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(0),
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0xffdadada),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "02",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 30,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  Text(
                                    "Jan",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                                    "sample@email",
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
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => viewScreen(),
                        ));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
