import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/SectionBibliotheque/Bilbliotheque.dart';
import 'package:kiliwebsite/Component/SectionNavbar/NavbarMenu.dart';
import 'package:kiliwebsite/Component/SectionNavbar/Navbare.dart';
import 'package:kiliwebsite/Component/SectionSecurite/Securite.dart';
import 'package:kiliwebsite/Component/SectionTemplate/Template.dart';
import 'package:kiliwebsite/Component/Sectioncompon/Component.dart';
import 'package:kiliwebsite/Component/Vitesse/Chiffretext.dart';
import 'package:kiliwebsite/Component/footer/Footers.dart';
import 'package:kiliwebsite/screen/responsive.dart';

// ignore: unused_import
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor: const Color.fromRGBO(244, 67, 54, 1),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    '../../../assets/Logo.png', // Remplacez par le chemin de votre logo
                    width: 100, // Ajustez la hauteur du logo selon vos besoins
                  ),
                ],
              ),
              elevation: 0,
              centerTitle: true,
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 100),
              child: const NavbarMenu()),
      drawer: const SidebarMenu(),
      body: Container(
        color: Color(0xFFF1F1F1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Bibliotheque(),
              Security(),
              Chiffres(),
              Template(),
              Component(),
              Footers()
              // Cartsimple()
            ],
          ),
        ),
      ),
    );
  }
}
