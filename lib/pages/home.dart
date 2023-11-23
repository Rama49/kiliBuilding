import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/PageLogin/Conexion.dart';
import 'package:kiliwebsite/Component/SectionBibliotheque/Bilbliotheque.dart';
import 'package:kiliwebsite/Component/SectionNavbar/NavbarMenu.dart';
import 'package:kiliwebsite/Component/SectionSecurite/Securite.dart';
import 'package:kiliwebsite/Component/SectionTemplate/Template.dart';
import 'package:kiliwebsite/Component/Vitesse/Chiffretext.dart';
import 'package:kiliwebsite/Component/footer/Footers.dart';

// ignore: unused_import

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF1F1F1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavbarMenu(),
              Bibliotheque(),
              Security(),
              Chiffres(),
              Template(),
              Footers()
            ],
          ),
        ),
      ),
    );
  }
}
