import 'package:flutter/material.dart';
import 'package:projectsystem/screens/adminFeatures/adminALscreen/adminVAscreen.dart';
import 'package:projectsystem/screens/adminFeatures/adminDBscreen/adminDBscreen.dart';
import 'package:projectsystem/screens/adminFeatures/adminNLscreen/adminNLscreen.dart';

class adminALscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3e9a71),
      body: SingleChildScrollView(
        child: Column(
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
                        image: AssetImage(
                            "assets/images/logo (black)clear BG.png"),
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
                          child: Icon(
                            Icons.logout,
                            color: Color(0xff212435),
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Appointment List",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 27,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Color(0x00000000),
                      height: 20,
                      thickness: 0,
                      indent: 0,
                      endIndent: 0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "REQUESTED APPOINTMENT",
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        MaterialButton(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            padding: EdgeInsets.all(0),
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: Color(0xff000000), width: 1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                          fontSize: 14,
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
                                Container(
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.zero,
                                  padding: EdgeInsets.zero,
                                  width: 150,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0x00000000),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.zero,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 20, 0),
                                        padding: EdgeInsets.zero,
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Color(0x800cff00),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Color(0x4d9e9e9e),
                                              width: 1),
                                        ),
                                        child: Icon(
                                          Icons.done,
                                          color: Color(0xff212435),
                                          size: 24,
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 20, 0),
                                        padding: EdgeInsets.zero,
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Color(0x80ff0000),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Color(0x4d9e9e9e),
                                              width: 1),
                                        ),
                                        child: Icon(
                                          Icons.delete,
                                          color: Color(0xff212435),
                                          size: 24,
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
                              builder: (context) => adminVAscreen(),
                            ));
                          },
                        ),
                        MaterialButton(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            padding: EdgeInsets.all(0),
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: Color(0xff000000), width: 1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                          fontSize: 14,
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
                                Container(
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.zero,
                                  padding: EdgeInsets.zero,
                                  width: 150,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0x00000000),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.zero,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 20, 0),
                                        padding: EdgeInsets.zero,
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Color(0x800cff00),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Color(0x4d9e9e9e),
                                              width: 1),
                                        ),
                                        child: Icon(
                                          Icons.done,
                                          color: Color(0xff212435),
                                          size: 24,
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 20, 0),
                                        padding: EdgeInsets.zero,
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Color(0x80ff0000),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Color(0x4d9e9e9e),
                                              width: 1),
                                        ),
                                        child: Icon(
                                          Icons.delete,
                                          color: Color(0xff212435),
                                          size: 24,
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
                              builder: (context) => adminVAscreen(),
                            ));
                          },
                        )
                      ],
                    ),
                    Divider(
                      color: Color(0x00000000),
                      height: 20,
                      thickness: 0,
                      indent: 0,
                      endIndent: 0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "APPROVED APPOINTMENT",
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        MaterialButton(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            padding: EdgeInsets.all(0),
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: Color(0xff000000), width: 1),
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
                                          fontSize: 14,
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
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => adminVAscreen(),
                            ));
                          },
                        ),
                        MaterialButton(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            padding: EdgeInsets.all(0),
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: Color(0xff000000), width: 1),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                          fontSize: 14,
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
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => adminVAscreen(),
                            ));
                          },
                        ),
                      ],
                    ),
                    Divider(
                      color: Color(0x00000000),
                      height: 20,
                      thickness: 0,
                      indent: 0,
                      endIndent: 0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "REJECTED APPOINTMENT",
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        MaterialButton(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            padding: EdgeInsets.all(0),
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: Color(0xff000000), width: 1),
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
                                          fontSize: 14,
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
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => adminVAscreen(),
                            ));
                          },
                        ),
                        MaterialButton(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            padding: EdgeInsets.all(0),
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: Color(0xff000000), width: 1),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                          fontSize: 14,
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
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => adminVAscreen(),
                            ));
                          },
                        ),
                      ],
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
