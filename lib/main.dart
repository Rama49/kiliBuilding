import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:kiliwebsite/Component/sectionEntrepreneurs/Entrepreneur.dart';
=======
import 'package:kiliwebsite/Component/SectionFonctionnalite/Fonctionnalite.dart';
>>>>>>> 86241c3d60c925459d8c5483a2ac673952d625e1

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kili Building',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Entrepreneur(),
      home: const Entrepreneur(),

    );
  }
}
