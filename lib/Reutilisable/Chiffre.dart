import 'package:flutter/material.dart';

class Nombres extends StatelessWidget {
  final String nombre;
  final String mynombre;

  const Nombres({
    super.key,
    required this.nombre,
    required this.mynombre
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Text(nombre, style: TextStyle(color: Colors.white, fontSize: 20)),
       Text(mynombre, style: TextStyle(color: Colors.white, fontSize: 20))
      ],
    );
  }
}