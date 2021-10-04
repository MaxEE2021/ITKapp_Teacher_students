import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:itk_teacher_students_app/Widgets/CustomBtn1.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MyEventsScreen extends StatefulWidget {
  MyEventsScreen({Key? key}) : super(key: key);

  @override
  _MyEventsScreenState createState() => _MyEventsScreenState();
}

class _MyEventsScreenState extends State<MyEventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            
            Expanded(
              child: Container(
                child: SfCalendar(
                  showCurrentTimeIndicator: true,
                  dataSource: MeetingDataSource(getAppointments()),
                  view: CalendarView.workWeek,
                  timeSlotViewSettings: TimeSlotViewSettings(
                    startHour: 6,
                    endHour: 18,
                  ), 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Appointment> getAppointments(){
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(today.year, today.month, today.day, 8,30,0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));
  final DateTime startTimeF = DateTime(today.year, today.month, today.day, 7,30,0);
  final DateTime endTimeF = startTime.add(const Duration(hours: 0));
  final DateTime startTimeSS = DateTime(today.year, today.month, today.day, 8,30,0);
  final DateTime endTimeSS = startTime.add(const Duration(hours: 1));

  meetings.add(Appointment(
    startTime: startTime, 
    endTime: endTime,
    subject: "BSD Class",
    color: Colors.purple,
    recurrenceRule: "FREQ=WEEKLY;INTERVAL=1;BYDAY=MO,WE,FR;COUNT=10",
    ));

  meetings.add(Appointment(
    startTime: startTimeF, 
    endTime: endTimeF,
    subject: "FLUTTER",
    color: Colors.blue,
    recurrenceRule: "FREQ=WEEKLY;INTERVAL=1;BYDAY=MO,TU,WE,TH;COUNT=10",
    ));

  meetings.add(Appointment(
    startTime: startTimeSS, 
    endTime: endTimeSS,
    subject: "SOFTSKILLS",
    color: Colors.red,
    recurrenceRule: "FREQ=WEEKLY;INTERVAL=1;BYDAY=TU,TH;COUNT=10",
    ));

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source){
    appointments = source;
  }

}
