import 'package:flutter/material.dart';
import 'package:projectsystem/screens/Dashboard/Appointment/addScreen.dart';
import 'package:projectsystem/screens/Dashboard/Notification/notifScreen.dart';
import 'package:projectsystem/screens/Dashboard/Profile/profileScreen.dart';
import 'package:projectsystem/screens/Dashboard/Search/viewScreen.dart';
import 'package:projectsystem/screens/Dashboard/dashboardScreen.dart';

class searchScreen extends StatelessWidget {
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
                      image:
                          AssetImage("assets/images/logo (black)clear BG.png"),
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
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Search",
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
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0x00000000),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            controller: TextEditingController(),
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
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(5.0)),
                                borderSide: BorderSide(
                                    color: Color(0xff000000), width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(5.0)),
                                borderSide: BorderSide(
                                    color: Color(0xff000000), width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(5.0)),
                                borderSide: BorderSide(
                                    color: Color(0xff000000), width: 1),
                              ),
                              hintText: "Search",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xff000000),
                              ),
                              filled: true,
                              fillColor: Color(0xfff2f2f3),
                              isDense: false,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 12),
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: Color(0xff000000),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5.0),
                                bottomRight: Radius.circular(5.0)),
                            side:
                                BorderSide(color: Color(0xff000000), width: 1),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Enter",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          textColor: Color(0xffffffff),
                          height: 45,
                          minWidth: 80,
                        ),
                      ],
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
                      "ALL RESULT'S",
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
                          margin:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                          padding: EdgeInsets.all(0),
                          width: MediaQuery.of(context).size.width,
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
                          width: MediaQuery.of(context).size.width,
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
                                  color: Color(0xffd5d5d5),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
