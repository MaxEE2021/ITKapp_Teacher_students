
import 'package:flutter/material.dart';
import 'package:itk_teacher_students_app/Widgets/Constants.dart';
import 'package:itk_teacher_students_app/Widgets/CustomBtn1.dart';
import 'package:itk_teacher_students_app/Widgets/CustomPostsWidgets.dart';
import 'package:itk_teacher_students_app/Widgets/CustomTags.dart';
import 'package:itk_teacher_students_app/Widgets/CustomUserBanner.dart';

class MyAnnouncementsScreen extends StatefulWidget {
  // MyAnnouncementsScreen({Key? key}) : super(key: key);
  final List? myContent;
  const MyAnnouncementsScreen ({
    this.myContent,
  });

  @override
  _MyAnnouncementsScreenState createState() => _MyAnnouncementsScreenState();
}


class _MyAnnouncementsScreenState extends State<MyAnnouncementsScreen> {
  String img = "https://weneedfun.com/wp-content/uploads/2016/07/Cute-Girl-Profile-pictures-For-Facebook-7.jpg";

  List MyTagsList=[
    MyTagsWidget(),
    MyTagsWidget(),
    MyTagsWidget(),
    MyTagsWidget(),
  ];
  
  @override
  Widget build(BuildContext context) {
    List? mycontenList = widget.myContent;
   
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: size.height *0.25,
                decoration: BoxDecoration(
                  color: MyPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,2),
                      blurRadius: 15,
                      color: My3ndColor,
                    )
                  ]
                ),
              ),
              Positioned(
                bottom: 55,
                left: 20,
                right: 20,
                child: MyCustomUserBanner(img: img),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Container(
              height: 70,
              // color: Colors.pink,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mycontenList?.length,
                // itemCount: MyTagsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    // child: MyTagsList[index],
                    child: MyTagsWidget(
                      JsonImage:  "${mycontenList?[index]["yoast_head_json"]["og_image"][0]["url"]}",
                    ),
                  );
                },
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top:15),
              child: ListView.builder(
                itemCount: mycontenList?.length,
                itemBuilder: (BuildContext context, int index) {
                  // return myPostsList[index];
                  return MyPostsWidget(
                    JsonImg: "${mycontenList?[index]["yoast_head_json"]["og_image"][0]["url"]}",
                    JsonBody: "${mycontenList![index]["yoast_head_json"]["og_description"]}",
                  );
                },
              ),
            ), 
          ),

          

          
        ],
      ),
    );
  }
}
