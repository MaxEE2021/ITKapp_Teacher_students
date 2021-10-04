
import 'package:flutter/material.dart';

class MyCustomTagBtn extends StatelessWidget {
  // const MyCustomTagBtn({Key? key}) : super(key: key);

  final String TagTXT;
  final Color? TagColor;
  final VoidCallback? MyonPressed;

  const MyCustomTagBtn ({
    this.TagTXT="EditableTag",
    this.TagColor,
    this.MyonPressed,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:9.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                // padding: EdgeInsets.symmetric(horizontal: 155, vertical: 12),
                padding: EdgeInsets.symmetric(vertical: 12),
                primary: null == TagColor ? Colors.grey: TagColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
              onPressed: null == MyonPressed ?  (){print("add a MyonPressed function to the widget");} : MyonPressed,
              child: Text(TagTXT)),
          ),
        ],
      ),
    );
  }
}