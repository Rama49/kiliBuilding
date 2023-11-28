import 'package:flutter/material.dart';

class LeftComponent extends StatefulWidget {
  @override
  _LeftComponentState createState() => _LeftComponentState();
}

class _LeftComponentState extends State<LeftComponent> {
  List<String> componentNames = ["NavBar", "HeroSection", "About"];
  Map<String, String> componentCodes = {
    "NavBar": '''
  import logo from './logo.svg';
import './App.css';
import Navbar from './components/Navbar/Navbar';


function App() {
  return (
    <div className='App'>
      <Navbar />
    </div>
  );
}

export default App;

''',
    "HeroSection": '''
import React from 'react';
import { Breadcrumb, Layout, Menu, theme } from 'antd';
import Infos from './Infos';
import Barre from './Menu';
import Hero from '../Hero';
import Donation from "../Donation";

const { Header, Content, Footer } = Layout;

function Navbar() {
  return (
    <div>
      <Infos />
      <Barre />
      {/* <Hero /> */}
      <Donation />

    </div>
  )
}

export default Navbar
''',
    "About": '''
import React from 'react';
import { BiLogoFacebook } from 'react-icons/bi';
import { BiLogoTwitter } from 'react-icons/bi';
import { BiLogoGooglePlus } from 'react-icons/bi';
import { IoLogoDribbble } from 'react-icons/io';
import { FaWifi } from 'react-icons/fa';
import { TiSocialLinkedin } from 'react-icons/ti';
import { HiMail } from 'react-icons/hi';
import { FaPhoneAlt } from 'react-icons/fa';
import { BiChevronDown } from 'react-icons/bi';
import { Col, Row } from 'antd';
import styled from 'styled-components';

const Tete = styled.div`
    background-color: #FF0390;
    color: #fff;
    
    .media{
        display: flex;
        flex-direction: row;
        font-family: 'Roboto';
        font-size: 14px;
        padding: 10px;
    }
    .contact{
        display: flex;
        flex-direction: row;
        justify-content: center;
        padding: 10px;

        padding-right: 20px;
        font-family: 'Roboto';
        font-size: 14px;
    }
    .infos{
        display: flex;
        width: 90%;
        align-items: center;
        width: 90%;
        margin: 0 auto;
    }
`

const Social = styled.div`
    .icons{
        width: 18px;
        height: 18px;
        padding-left: 5px;
    }
`

const Info = styled.div`
    display: flex;
    flex-direction: row;
    justify-content: space-between;

    .icon{
        padding-right: 7px;
        width: 18px;
        height: 18px;
    }

    .phone{
        padding-right: 7px;
    }

    span{
        padding-inline-end: 10px;
    }
`

function Infos() {
  return (
    <Tete>
        <Row justify="center" align="middle" className='infos'>
            <Col span={14} className='media'>
                <span>Suivez-nous sur :</span>
                <Social>
                    <BiLogoFacebook className='icons' />
                    <BiLogoTwitter className='icons' />
                    <BiLogoGooglePlus className='icons' />
                    <IoLogoDribbble className='icons' />
                    <FaWifi className='icons' />
                    <TiSocialLinkedin className='icons' />
                </Social>
            </Col>
            <Col span={10} className='contact'>
                <Info>
                    <HiMail className='icon' />
                    <span>E-mail : demo@example.com</span>
                </Info>
                <Info>
                    <FaPhoneAlt className='phone' />
                    <span>Téléphone : 0123456789</span>
                </Info>
                <Info>
                    <span>FR</span>
                    <BiChevronDown className='icon' />
                </Info>
            </Col>
        </Row>
    </Tete>
  )
}

export default Infos
''',
  };
  String selectedCode = "Cliquez sur l'un des composant";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header
        Container(
          height: 50,
          color: Color.fromARGB(255, 196, 192, 192),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.home,
                        color: const Color.fromARGB(255, 70, 63, 63)),
                    onPressed: () {
                      // Ajoutez ici la logique pour l'icône de la maison
                    },
                  ),
                  SizedBox(
                      width:
                          8), // Espacement entre l'icône et le premier bouton

                  ElevatedButton(
                    onPressed: () {
                      // Ajoutez ici la logique pour le premier bouton
                    },
                    child: Text(
                      "Component Library",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Couleur du bouton
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Border radius réduit
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12), // Ajustez le padding
                    ),
                  ),
                  SizedBox(width: 8), // Espacement entre les deux boutons
                  ElevatedButton(
                    onPressed: () {
                      // Ajoutez ici la logique pour le deuxième bouton
                    },
                    child: Text(
                      "Add Page",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(
                          255, 227, 226, 226), // Couleur du bouton
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Border radius réduit
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12), // Ajustez le padding
                    ),
                  ),
                ],
              ),
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("Import Projet"),
                    value: "Import",
                  ),
                  PopupMenuItem(
                    child: Text("Backup Projet"),
                    value: "Backup",
                  ),
                  PopupMenuItem(
                    child: Text("Clear Projet"),
                    value: "Clear",
                  ),
                ],
                onSelected: (value) {
                  // Ajoutez ici la logique pour le menu déroulant
                  print("Selected: $value");
                },
                icon: Icon(Icons.arrow_drop_down, color: Colors.black),
              ),
            ],
          ),
        ),
        // Liste de cartes de composants React JS
        Expanded(
          child: ListView.builder(
            itemCount: componentNames.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(componentNames[index]),
                onTap: () {
                  setState(() {
                    selectedCode = componentCodes[componentNames[index]] ?? "";
                  });
                },
              );
            },
          ),
        ),
        // Titre pour le code React JS sélectionné
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(16),
          child: Text(
            "Le Code React JS",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        // Conteneur pour afficher le code React JS sélectionné
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity, // Largeur de 100%
              color: Colors.black,
              padding: EdgeInsets.all(16),
              child: Text(
                selectedCode,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        // Footer avec bouton "delete", "cancel" et "save"
        Container(
          height: 50,
          color: Color.fromARGB(255, 196, 192, 192),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {
                  // Ajoutez ici la logique pour le bouton "delete"
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.delete_sweep_rounded, color: Colors.black),
                ),
                shape: CircleBorder(),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Ajoutez ici la logique pour le bouton "save"
                    },
                    child: Text("Cancel",
                    style: TextStyle(color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Ajoutez ici la logique pour le bouton "save"
                    },
                    child: Text("Save",
                    style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
