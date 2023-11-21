import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/SectionBibliotheque/Bilbliotheque.dart';
import 'package:kiliwebsite/Component/SectionNavbar/NavbarMenu.dart';
import 'package:kiliwebsite/Component/SectionSecurite/Securite.dart';
// ignore: unused_import

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavbarMenu(),
            Bibliotheque(),
            Security()
          ],
        ),
      ),
    );
  }
}
