import 'package:flutter/material.dart';

class Cartsimple extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;

  const Cartsimple(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
        )
      ),
      width:400 ,
      child:Column(children: [
       Icon(icon),
       Text(title),
       Text(subTitle)

      ]) ,
    );
  }
}
