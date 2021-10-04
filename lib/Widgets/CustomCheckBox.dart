import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  // MyCheckBox({Key? key}) : super(key: key);
  final String? TextCheckBox;

  const MyCheckBox({
    this.TextCheckBox="Text",
  });

  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  @override
  bool value = false;
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: Colors.red,
          value: value, 
          onChanged: (value){setState(() {
            this.value = value!;
          });},
        ),
        Text(
          "${widget.TextCheckBox}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}