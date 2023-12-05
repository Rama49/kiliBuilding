import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kiliwebsite/Reutilisable/FooterElement.dart';
import 'package:kiliwebsite/Reutilisable/Input.dart';
import 'package:kiliwebsite/Reutilisable/Inputfooter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footers extends StatelessWidget {
  const Footers({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return screenSize.width > 768
        ? Container(
            color: const Color(0xFFF44336),
            padding: const EdgeInsets.only(bottom: 50),
            margin: const EdgeInsets.only(top: 50, bottom: 10),
            child: Column(children: [
              const SizedBox(height: 25),
              const Text("S'abonner a notre Newsletter",
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: MyInput(textInput: "E-mail"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const FooterElement(
                      titre: "Entreprise",
                      text1: "A propos de nous",
                      text4: "Pourquoi nous choisir",
                      text2: "Tarification",
                      text3: "Temoignage"),
                  const FooterElement(
                      titre: "Ressources",
                      text1: "Politique prive",
                      text4: "Termes & conditions",
                      text2: "Blog",
                      text3: "Contacter nous"),
                  const FooterElement(
                      titre: "Produits",
                      text1: "Gestion de projet",
                      text4: "Suivi du temps",
                      text2: "Calendrier",
                      text3: "enerer des prospects"),
                  Column(
                    children: [
                      Image.asset('assets/Logo.png', width: 100),
                      SizedBox(height: 10),
                      const Text(
                        "Copyright 2022",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              _lancerURLFacebook(
                                  'https://www.facebook.com/bakeli.tech/?locale=fr_FR');
                            },
                            child: Image.asset('assets/facebook.png', width: 20, height: 20),
                          ),
                          SizedBox(width: 20),
                           InkWell(
                            onTap: () {
                              _lancerURLTwitter(
                                  'https://www.linkedin.com/company/bakeli-school-of-technology/?originalSubdomain=sn');
                            },
                            child:  Image.asset('assets/Twitter.png'),
                          ),
                          SizedBox(width: 20),
                          InkWell(
                            onTap: () {
                              _lancerURLInstagram(
                                  'https://www.instagram.com/bakelischool/');
                            },
                            child: Image.asset('assets/Instagram.png'),
                          ),
                          SizedBox(width: 20),
                          Image.asset('assets/LinkedIn.png', width: 50, height: 50),
                        ],
                      )
                    ],
                  )
                ],
              )
            ]),
          )
        : Container(
            color: const Color(0xFFF44336),
            padding: const EdgeInsets.only(bottom: 20),
            margin: const EdgeInsets.only(top: 50, bottom: 10),
            child: Column(children: [
              SizedBox(height: 25),
              Text("S'abonner a notre Newsletter",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              SizedBox(height: 25),
              Inputfooter(textInput: "email"),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 30),
                  Text("Entreprise",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  Text("A propos de nous",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Tarification",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Temoignages",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Pourquoi nous",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  SizedBox(height: 30),
                  Text("Ressources",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  Text("Politique prive",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Termes & conditions",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Blog",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Contacter nous",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  SizedBox(height: 30),
                  Text("Produits",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  Text("Gestion de projet",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Suivi du temps",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Calendrier",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("generer des prospects",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      Image.asset('assets/Logo.png', width: 100),
                      SizedBox(height: 10),
                      const Text(
                        "Copyright 2022",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              _lancerURLFacebook(
                                  'https://www.facebook.com/bakeli.tech/?locale=fr_FR');
                            },
                            child: Image.asset('assets/facebook.png'),
                          ),
                          SizedBox(width: 20),
                           InkWell(
                            onTap: () {
                              _lancerURLTwitter(
                                  'https://www.linkedin.com/company/bakeli-school-of-technology/?originalSubdomain=sn');
                            },
                            child:  Image.asset('assets/Twitter.png'),
                          ),
                          SizedBox(width: 20),
                           InkWell(
                            onTap: () {
                              _lancerURLInstagram(
                                  'https://www.instagram.com/bakelischool/');
                            },
                            child: Image.asset('assets/Instagram.png'),
                          ),
                          SizedBox(width: 20),
                           InkWell(
                            onTap: () {
                              _lancerURLLinkdin(
                                  'https://www.linkedin.com/company/bakeli-school-of-technology/?originalSubdomain=sn');
                            },
                            child: Image.asset('assets/Linkedin.png'),

                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ]),
          );
  }

 _lancerURLFacebook(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Impossible de lancer $url');
  }
}

_lancerURLTwitter(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Impossible de lancer $url');
  }
}

_lancerURLInstagram
(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Impossible de lancer $url');
  }
}

_lancerURLLinkdin
(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Impossible de lancer $url');
  }
}
}
