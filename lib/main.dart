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

Future main() async {
  if (kIsWeb) {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAVqcTR9BQwLNf3PNc1Z_RBtHFycVPTGYk",
            appId: "1:472122855308:web:456b03650d040f63e650a9",
            messagingSenderId: "472122855308",
            projectId: "kili-app-builder-d24ef"));
  }
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
        '/Conexion': (context) => Connexion(),
        '/Inscription': (context) => Inscription(),
        '/DetailComposant': (context) => DetailComposant(),
        '/AncrePRO': (context) => AncrePRO(),
        '/Ancretempl': (context) => Ancretempl(),
        '/AncreCompo': (context) => AncreCompo(),
      },
    );
  }
}
