import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kiliwebsite/pages/home.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: prefer_const_constructors
  await Firebase.initializeApp(
      // ignore: prefer_const_constructors
      options: FirebaseOptions(
          apiKey: "AIzaSyDpJPbimIX1LdCMLl92Dm5MmLOY61wDBd8",
          appId: "1:74389324499:web:e79446474762d087704a26",
          messagingSenderId: "74389324499",
          projectId: "kili-app-builder"));
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
      home: const HomePage(),
    );
  }
}
