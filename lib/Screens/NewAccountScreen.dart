
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:itk_teacher_students_app/Screens/LogInScreen.dart';
import 'package:itk_teacher_students_app/Widgets/CustomBtn1.dart';
import 'package:itk_teacher_students_app/Widgets/CustomCheckBox.dart';
import 'package:itk_teacher_students_app/Widgets/CustomTextField.dart';

class MyNewAccountScreen extends StatelessWidget {
  const MyNewAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: size.height,
                // color: Colors.blue,
                child: Image.asset(
                  "lib/img/bgNewAccount.png",
                  fit: BoxFit.fill,
                ),
                // child: Image(image: AssetImage("lib/img/bg_itk.png",)),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Image.asset(
                        "lib/img/itk_logo.png",
                        height: size.height*0.19,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: MyCustomTextField(
                        hintText: "UserName",
                        myIcon: Icons.person,
                        myIconColor: Color(0xffe38182),
                        ContainerFieldColor: Color(0x60e38182),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: MyCustomTextField(
                        hintText: "E-mail",
                        myIcon: Icons.email,
                        myIconColor: Color(0xffe38182),
                        ContainerFieldColor: Color(0x60e38182),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: MyCustomTextField(
                        TxtOrEmail: TextInputType.text,
                        isPassWord: true,
                        hintText: "Password",
                        myIcon: Icons.lock,
                        myIconColor: Color(0xffe38182),
                        ContainerFieldColor: Color(0x60e38182),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyCheckBox(
                          TextCheckBox: "Student",
                        ),
                        MyCheckBox(
                          TextCheckBox: "Teacher",
                        ),
                      ],
                    ),
                    MyCustomTagBtn(
                      TagTXT: "Create New Account",
                      TagColor: Color(0xffe38182),
                    ),
                    TextButton(
                      child: Text(
                        "Already Have an account?",
                        style: TextStyle(
                          color: Color(0xfff15959),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyLogInScreen()));}, 
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}