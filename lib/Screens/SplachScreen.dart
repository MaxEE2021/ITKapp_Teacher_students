import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:itk_teacher_students_app/Screens/LogInScreen.dart';


class MySplashScreen extends StatelessWidget {
  // const MySplashScreen({Key? key}) : super(key: key);
  final List? myContent;
  const MySplashScreen({
    this.myContent,
  });

  @override
  Widget build(BuildContext context) {   
    return AnimatedSplashScreen(
      splash:
      Container(
        child: Image(image: AssetImage("lib/img/itk_logo.png")),
      ), 
      nextScreen: MyLogInScreen(myContent: myContent,),
      splashTransition: SplashTransition.fadeTransition,
      // backgroundColor: Color(0xff333436),
      duration: 2500,
    );
  }
}

