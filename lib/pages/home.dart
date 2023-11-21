import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/SectionFonctionnalite/Fonctionnalite.dart';
import 'package:kiliwebsite/Component/SectionNavbar/NavbarMenu.dart';
// ignore: unused_import
import 'package:kiliwebsite/Component/SectionSecurite/Securite.dart';
// import 'package:kiliwebsite/Component/sectionEntrepreneurs/Entrepreneur.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavbarMenu(), 
            // Entrepreneur(),
            Fonctionnalite(),// Affichez le composant Navbar séparément
            Security(), // Affichez le composant Security séparément
          ],
        ),
      ),
    );
  }
}
