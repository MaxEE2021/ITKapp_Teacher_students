import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:itk_teacher_students_app/Widgets/CustomBtn1.dart';

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
        child: Container(
          child: Text("EventsScreen"),
        ),
      ),
    );
  }
}


