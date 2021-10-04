import 'package:flutter/material.dart';
import 'package:itk_teacher_students_app/Screens/AccountScreen.dart';


class MyCustomUserBanner extends StatelessWidget {
  const MyCustomUserBanner({
    Key? key,
    required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          // color: Colors.amberAccent,
          child: Column(
            children: [
              Text(
                "Hello There!",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45
                ),
              ),
              Text(
                "User Name!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            // color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(19),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                img,
              ),
            ),
          ),
          width: 60,
          height: 60,
          child: TextButton(
            child: Text(""),
            onPressed: (){},
            // onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyAccountScreen()));}, 
          ),
          
        )
      ],
    );
  }
}