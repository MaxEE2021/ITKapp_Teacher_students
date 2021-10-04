
import 'package:flutter/material.dart';
import 'package:itk_teacher_students_app/Widgets/Constants.dart';
import 'package:itk_teacher_students_app/Widgets/CustomPostsWidgets.dart';
import 'package:itk_teacher_students_app/Widgets/CustomTags.dart';
import 'package:itk_teacher_students_app/Widgets/CustomTextField.dart';
import 'package:itk_teacher_students_app/Widgets/CustomUserBanner.dart';

class MyAnnouncementsScreenProffesor extends StatefulWidget {
  // MyAnnouncementsScreenProffesor({Key? key}) : super(key: key);
  final List? myContent;
  const MyAnnouncementsScreenProffesor ({
    this.myContent,
  });

  @override
  _MyAnnouncementsScreenProffesorState createState() => _MyAnnouncementsScreenProffesorState();
}


class _MyAnnouncementsScreenProffesorState extends State<MyAnnouncementsScreenProffesor> {
  String img = "https://weneedfun.com/wp-content/uploads/2016/07/Cute-Girl-Profile-pictures-For-Facebook-7.jpg";

  List MyTagsList=[
    MyTagsWidget(
      JsonImage: "https://www.alliantrx.com/wp-content/uploads/2019/03/ARX-Blog_5-Proven-Business-Skills-Hero.png",
    ),
    MyTagsWidget(
      JsonImage: "https://4.bp.blogspot.com/-oL-_anyheGU/WtTtE8XZglI/AAAAAAAAuM4/XDCv-aJfrFwBVaHMNWJVcOkwk_IbN8VRwCLcBGAs/s1600/habilidades-blandas-psicologia.jpg",
    ),
    MyTagsWidget(
    ),
    MyTagsWidget(
      JsonImage: "https://study.com/cimages/course-image/nmta-english-language-arts-practice-study-guide_186382_large.jpg",
    ),
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
            padding: const EdgeInsets.only(left:10 ,right:10 ,top: 15,),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  offset: Offset(-5,5),
                  blurRadius: 5,
                  color: Colors.black54,
                )],
                color: Colors.grey.shade100
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:4, right: 4, top: 4),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: TextField(
                        maxLines: 3,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 0.6,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: MyPrimaryColor,
                              width: 2,
                            ),
                          )
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: My3ndColor,
                      primary: Colors.black
                    ),
                    child: Text("Post"),
                    onPressed: (){}, 
                  )
                ],
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
