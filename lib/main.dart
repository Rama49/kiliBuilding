import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/AncreCompo/AncreCompo.dart';
import 'package:kiliwebsite/Component/DetailComposant/DetailComposant.dart';
import 'package:kiliwebsite/Component/Inscription.dart';
import 'package:kiliwebsite/Component/PageLogin/Conexion.dart';
import 'package:kiliwebsite/Component/SectionSecurite/Securite.dart';
import 'package:kiliwebsite/Component/ancreProjet/AncrePRO.dart';
import 'package:kiliwebsite/Component/ancreTemplate/Ancretempl.dart';
import 'package:kiliwebsite/Reutilisable/LoginSignUp.dart';
import 'package:kiliwebsite/pages/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBiOFKqyLJxWiqVTFtoI4SLlML33kCqpW8",
          appId: "1:234349841282:web:5971b44e35a19f00449d9b",
          messagingSenderId: "234349841282",
          projectId: "kili-app-builder-b8ece"),
    );
  }
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kili Building',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
      routes: {
        '/Conexion': (context) => Conexion(),
        '/Inscription': (context) => Inscription(),
        '/DetailComposant': (context) => DetailComposant(),
        '/AncrePRO': (context) => AncrePRO(),
        '/Ancretempl': (context) => Ancretempl(),
        '/AncreCompo': (context) => AncreCompo(),
      },
    );
  }
}
