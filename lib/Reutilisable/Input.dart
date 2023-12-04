import 'package:flutter/material.dart';


class MyInput extends StatelessWidget {

  final String textInput;
  
  const MyInput({
    super.key,
    required this.textInput
    });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.only(right:155, left: 155, bottom: 25),
          padding: EdgeInsets.only(left: 20),
          child: TextFormField(
              decoration: new InputDecoration(
                labelText: textInput,
                fillColor: Colors.white,
          //       border: new OutlineInputBorder(
          // borderRadius: new BorderRadius.circular(25.0),
          // borderSide: new BorderSide(),
          //       ),
              )),
        ));
  }
}
