import 'package:flutter/material.dart';
import 'package:itk_teacher_students_app/Widgets/Constants.dart';

class MyPostsWidget extends StatefulWidget {
  // MyPostsWidget({Key? key}) : super(key: key);
  final String? JsonImg;
  final String? JsonBody;
  
  const MyPostsWidget ({
    this.JsonImg="https://weneedfun.com/wp-content/uploads/2016/07/Cute-Girl-Profile-pictures-For-Facebook-7.jpg",
    this.JsonBody="Hola",
  });

  @override
  _MyPostsWidgetState createState() => _MyPostsWidgetState();
}

class _MyPostsWidgetState extends State<MyPostsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-5,5),
                      blurRadius: 8,
                      color: Colors.black54,
                    )
                  ]
                ),
                // color: Colors.black12,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage("${widget.JsonImg}"),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "User Name",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Posted at date",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: Text(
                              "Class",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "${widget.JsonBody}"
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}