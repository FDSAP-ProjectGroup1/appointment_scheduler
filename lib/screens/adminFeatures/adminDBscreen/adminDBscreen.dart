import 'package:flutter/material.dart';
import 'package:projectsystem/screens/adminFeatures/adminALscreen/adminALscreen.dart';
import 'package:projectsystem/screens/adminFeatures/adminNLscreen/adminNLscreen.dart';

class adminDBscreen extends StatelessWidget {
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
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextField(
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
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              BorderSide(color: Color(0xff000000), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              BorderSide(color: Color(0xff000000), width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              BorderSide(color: Color(0xff000000), width: 1),
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
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        prefixIcon: Icon(Icons.search,
                            color: Color(0xff212435), size: 24),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "List of User's",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 30,
                            color: Color(0xff000000),
                          ),
                        ),
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
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                      padding: EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Color(0xff000000), width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            padding: EdgeInsets.all(0),
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              shape: BoxShape.circle,
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
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                      padding: EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Color(0xff000000), width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            padding: EdgeInsets.all(0),
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              shape: BoxShape.circle,
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
