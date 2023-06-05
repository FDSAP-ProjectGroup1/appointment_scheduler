import 'package:flutter/material.dart';
import 'package:projectsystem/screens/adminFeatures/adminALscreen/adminALscreen.dart';

class adminVAscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3d9970),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0x00000000),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.zero,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff000000),
                        size: 25,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => adminALscreen(),
                        ));
                      },
                    ),
                  ),
                ),
                Text(
                  "APPOINTMENT DETAILS",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 10,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xff000000),
            height: 16,
            thickness: 1,
            indent: 0,
            endIndent: 0,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(0),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Color(0xff000000), width: 1),
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
                Container(
                  margin: EdgeInsets.fromLTRB(4, 0, 0, 0),
                  padding: EdgeInsets.all(0),
                  width: 165,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Color(0xff000000), width: 1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "user name",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          "sample email",
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
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            padding: EdgeInsets.all(0),
            width: 265,
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Color(0xff000000), width: 1),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Title",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      "Details",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xff09ff00),
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  ),
                  child: Icon(
                    Icons.edit,
                    color: Color(0xffffffff),
                    size: 25,
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xffff0000),
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  ),
                  child: Icon(
                    Icons.delete,
                    color: Color(0xffffffff),
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
