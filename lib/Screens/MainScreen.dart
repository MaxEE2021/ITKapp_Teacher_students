import 'package:flutter/material.dart';
import 'package:itk_teacher_students_app/Screens/AccountScreen.dart';
import 'package:itk_teacher_students_app/Screens/AnnouncementsScreen.dart';
import 'package:itk_teacher_students_app/Screens/EventsScreen.dart';
import 'package:itk_teacher_students_app/Widgets/Constants.dart';

class MyMainScreen extends StatefulWidget {
  // MyMainScreen({Key? key}) : super(key: key);
  final List? myContent;
  const MyMainScreen({
    this.myContent,
  });

  @override
  _MyMainScreenState createState() => _MyMainScreenState();
}

class _MyMainScreenState extends State<MyMainScreen> {
    int _BotmNavBarCurrentIndex=0;
  List<Widget> _BNBIdex = [
    // MyAnnouncementsScreen(),
    // MyEventsScreen(),
    // MyAccountScreen(),
  ];
  List<String> _AppBarTitles = [
    "Announcements",
    "Upcoming Sessions",
    "Account",
  ];
  @override
  Widget build(BuildContext context) {
    _BNBIdex = [
    MyAnnouncementsScreen(
      myContent: widget.myContent,
    ),
    MyEventsScreen(),
    MyAccountScreen(),
  ];
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_AppBarTitles[_BotmNavBarCurrentIndex]),
      //   centerTitle: true,
      //   backgroundColor: MyPrimaryColor,
      //   elevation: 0,
      // ),

      body: _BNBIdex[_BotmNavBarCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: My3ndColor,
        onTap: (index){
          setState(() {
            _BotmNavBarCurrentIndex = index;
          });
        },
        currentIndex: _BotmNavBarCurrentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ]
      ),
    );
  }
}