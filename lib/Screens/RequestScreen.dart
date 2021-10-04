import 'dart:convert';



import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:itk_teacher_students_app/Screens/AnnouncementsScreen.dart';
import 'package:itk_teacher_students_app/Screens/SplachScreen.dart';
import 'package:itk_teacher_students_app/Widgets/CustomPostsWidgets.dart';

// List _postcontent=[];


class MyRequestScreen extends StatefulWidget {
  MyRequestScreen({Key? key}) : super(key: key);

  @override
  _MyRequestScreenState createState() => _MyRequestScreenState();
}



class _MyRequestScreenState extends State<MyRequestScreen> {

var URL = "https://codesundar.com/wp-json/wp/v2/posts";
var _content =[];




getEntriesFromNetwork() async {
  try{
    http.get(Uri.parse(URL)).then((response){
      print("ocurrio succes");
      print(response.body);
      var resp = json.decode(response.body);
      setState(() {
        _content = resp; ///here I save the content
        // _postcontent = resp;
        print(_content);
      });
    }).catchError((e){
      print("Ocurrio un error");
      print(e);
    });
  }
  catch(e){
    print(e);
  }
}

firstTimeGettingRequest (){
  getEntriesFromNetwork();
  print("FIRST TIME GETTING DATA");
  // return MySplashScreen();
}

// PasingData(){

//   ListView.builder(
//     itemCount: _content.length,
//     itemBuilder: (BuildContext context, int index) {
//       return Container(
//         child: MySplashScreen(
//           JsonTestimg :"http://codesundar.com/wp-content/uploads/2020/12/flutter-google-maps.png",
//         ),
//       );
//       // return Container(
//       //   child: MyAnnouncementsScreen(
//       //     JsonImgAS:"http://codesundar.com/wp-content/uploads/2020/12/flutter-google-maps.png",
//           // JsonImgAS:"${_content[index]["yoast_head_json"]["og_image"][0]["url"]}",
//           // JsonImgAS: "${_content[index]["yoast_head_json"]["og_image"][0]["url"]}",
//           // JsonTitle: "${_content[index]["yoast_head_json"]["og_title"]}",
//           // JsonDesc: "${_content[index]["yoast_head_json"]["og_description"]}",
//           // JsonModified: "${_content[index]["modified"]}",
//       //   ),
//       // );
//     },
//   );
//   print("PASSING DATA");
//   print("${_content[0]["yoast_head_json"]["og_image"][0]["url"]}");
//   return MySplashScreen();
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _content.length == 0 ? 
        firstTimeGettingRequest()
        : 
        // MySplashScreen()
        // PasingData()
        MySplashScreen(
          myContent: _content,
        )

        // ListView.builder(
        //   itemCount: _content.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     return Container(
        //       child: MyPostsWidget(
        //         JsonImg: "${_content[index]["yoast_head_json"]["og_image"][0]["url"]}",
        //       ),
        //     );
        //   },
        // ),
      ),
    );
  }
}

