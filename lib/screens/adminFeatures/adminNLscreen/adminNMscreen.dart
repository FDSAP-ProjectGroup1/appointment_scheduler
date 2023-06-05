import 'package:flutter/material.dart';
import 'package:projectsystem/screens/adminFeatures/adminNLscreen/adminNLscreen.dart';

class adminNMscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3e9a71),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xff000000),
                          size: 25,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => adminNLscreen(),
                          ));
                        },
                      ),
                    ),
                    Text(
                      "My Profile",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Color(0xff000000),
                height: 15,
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Color(0x00000000),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            border:
                                Border.all(color: Color(0xff000000), width: 1),
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
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 0),
                                padding: EdgeInsets.all(0),
                                width: MediaQuery.of(context).size.width *
                                    0.7000000000000001,
                                decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0)),
                                  border: Border.all(
                                      color: Color(0x4d9e9e9e), width: 1),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
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
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 0),
                                padding: EdgeInsets.all(0),
                                width: MediaQuery.of(context).size.width *
                                    0.7000000000000001,
                                decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0)),
                                  border: Border.all(
                                      color: Color(0x4d9e9e9e), width: 1),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Thank you! That was very helpful!",
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
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
