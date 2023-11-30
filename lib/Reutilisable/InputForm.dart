import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  
   final String placeholder;

  const InputForm({super.key, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 50,
      child: Column(
        children: [
            TextFormField(
              decoration: new InputDecoration(
            labelText: placeholder,
            fillColor: Colors.white,
            //       border: new OutlineInputBorder(
            // borderRadius: new BorderRadius.circular(25.0),
            // borderSide: new BorderSide(),
            //       ),
          ))
        ],
      ),
    );
  }
}