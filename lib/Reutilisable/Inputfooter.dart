import 'package:flutter/material.dart';


class Inputfooter extends StatelessWidget {

  final String textInput;
  
  const Inputfooter({
    super.key,
    required this.textInput
    });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.only(right:20, left: 20),
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
