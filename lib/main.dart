import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/Inscription.dart';
import 'package:kiliwebsite/Component/PageLogin/Conexion.dart';
import 'package:kiliwebsite/Component/SectionSecurite/Securite.dart';
import 'package:kiliwebsite/pages/home.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: prefer_const_constructors
  if (kIsWeb) {
  await Firebase.initializeApp(
      // ignore: prefer_const_constructors
      options: FirebaseOptions(
          apiKey: "AIzaSyDzvlZ8Y8CpXoQAhGv0_BMLcn8b0txFm6I",
          appId: "1:66614247301:web:17ea08969779820fdf4eec",
          messagingSenderId: "66614247301",
          projectId: "kili-app-builder-bcf1d"));
    
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
        '/Security': (context) => Security(),
      },
    );
  }
}
