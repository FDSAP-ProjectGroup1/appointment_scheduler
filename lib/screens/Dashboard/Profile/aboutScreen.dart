import 'package:flutter/material.dart';
import 'package:projectsystem/screens/Dashboard/Profile/profileScreen.dart';

class aboutScreen extends StatelessWidget {
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
              margin: EdgeInsets.fromLTRB(10, 50, 0, 0),
              padding: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0x00000000),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
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
                        "About Us",
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
                              "What is Appointment Scheduling System? ",
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
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 370,
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
                                  decoration: BoxDecoration(
                                    color: Color(0x00000000),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "An appointment scheduling tool is a software application that allows users to easily manage and book appointments with customers and colleagues. It is used by businesses to streamline their appointment booking process, allowing customers to easily book appointments and staff to manage and track appointments easily. The tool can enable automatic reminders, calendars, and notifications to be sent to customers and staff, ensuring that all appointments are on time.",
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
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Objectives of Appointment Scheduling System. ",
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
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 1850,
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
                                  decoration: BoxDecoration(
                                    color: Color(0x00000000),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "With the help of appointment management systems, companies can make sure that they are not double booked which will help their company be more organized and can help the companies in various ways. The major objectives of the appointment management systems is:",
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
                                        "\nTo increase customer satisfaction:\n \nThis allows the customers to manage their appointments according to their own preference which helps to increase the amount of customer satisfaction that they feel. Happy customers mean repeat business and better reviews for the company.",
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
                                        "\nTo reduce unpunctuality: \nAs the schedule is properly managed with the help of this software the employees, as well as the customers, will get notifications and reminders before the appointment so they do not have any reason to be late or miss the appointment. As the appointment was scheduled as per the convenience of the customers as well as the employees this will reduce the amount of time that is wasted due to the customer arriving late to the appointment.",
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
                                        "\nReduce the number of cancellations: \nThe management system allows the customers to cancel and reschedule their appointment till a certain time before the actual appointment. This helps to greatly reduce the amount of time that is wasted in last minute cancellations. Last minute cancellations result in the loss of the opportunity to use that time for something else that could have been productive and could have resulted in the increase of revenue for the company.",
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
                                        "\nLess wastage of time: \nDue to appointment management systems, you can make sure that the whole working day is scheduled in such a way that you make the most of your time and that there is no time during the day that you will be idle or wasting time. This is a very good system for the time management of the whole company.",
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
                                        "\nTo allocate only the required amount of time: \nEach appointment can run for different amounts of time. The appointment management system aims to help the company and the customers allocate only the amount of time that will be needed for that particular appointment so that the individuals will be able to know exactly how much time they have for the meeting and also be able to schedule something else that can be productive in the remaining amount of time. The appointment management system can also help change the amount of time that is allocated for the meeting if there is any change in the amount of time that the client or the employee has for the meeting.",
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
