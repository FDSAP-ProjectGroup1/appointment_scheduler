import 'package:flutter/material.dart';
import 'package:projectsystem/screens/Dashboard/Appointment/addScreen.dart';

class AdminScreen extends StatelessWidget {
  final List<Appointment> appointments;
  final Function(Appointment) onAppointmentAction;

  AdminScreen({
    required this.appointments,
    required this.onAppointmentAction,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Screen'),
      ),
      body: ListView.builder(
        itemCount: appointments.length,
        itemBuilder: (context, index) {
          Appointment appointment = appointments[index];
          return Column(
            children: [
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
              ListTile(
                title: Text(appointment.title),
                subtitle: Text(appointment.reason),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () {
                        // Perform approval action
                        onAppointmentAction(appointment);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        // Perform rejection action
                        onAppointmentAction(appointment);
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
