import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/DetailComposant/DetailComposant.dart';
import 'package:kiliwebsite/Component/Inscription.dart';
import 'package:kiliwebsite/Component/PageLogin/Conexion.dart';
// import 'package:kiliwebsite/Component/SectionSecurite/Securite.dart';
// import 'package:kiliwebsite/Reutilisable/LoginSignUp.dart';
import 'package:kiliwebsite/pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kili App Builder',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
      routes: {
        '/Conexion': (context) => const Conexion(),
        '/Inscription': (context) => const Inscription(),
        '/DetailComposant': (context) => const DetailComposant(),
      },
    );
  }
}
