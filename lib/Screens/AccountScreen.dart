import 'package:flutter/material.dart';
import 'package:itk_teacher_students_app/Widgets/Constants.dart';
import 'package:itk_teacher_students_app/Widgets/CustomBtn1.dart';
import 'package:itk_teacher_students_app/Widgets/CustomTextField.dart';

class MyAccountScreen extends StatefulWidget {
  MyAccountScreen({Key? key}) : super(key: key);

  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  child: Stack(
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage("https://weneedfun.com/wp-content/uploads/2016/07/Cute-Girl-Profile-pictures-For-Facebook-7.jpg"),
                        ),
                      ),

                      Positioned(
                        bottom: 90,
                        left: 0,
                        right: 0,
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ),
          
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: MyCustomTextField(
                    hintText: "Name",
                    myIcon: Icons.person,
                    myIconColor:MyPrimaryColor,
                    ContainerFieldColor: Color(0x60e38182),
                    TxtOrEmail: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: MyCustomTextField(
                    hintText: "E-mail",
                    myIcon: Icons.email,
                    myIconColor: Color(0xffe38182),
                    ContainerFieldColor: Color(0x60e38182),
                    TxtOrEmail: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: MyCustomTextField(
                    hintText: "New Password",
                    myIcon: Icons.lock,
                    myIconColor: Color(0xffe38182),
                    ContainerFieldColor: Color(0x60e38182),
                    isPassWord: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: MyCustomTextField(
                    hintText: "Confirm Password",
                    myIcon: Icons.lock,
                    myIconColor: Color(0xffe38182),
                    ContainerFieldColor: Color(0x60e38182),
                    isPassWord: true,
                  ),
                ),
                MyCustomTagBtn(
                        TagTXT: "Save Changes",
                        TagColor: Color(0xffe38182),
                        MyonPressed: (){},
                        // MyonPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyMainScreen()));},
                      ),
          
          
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}







