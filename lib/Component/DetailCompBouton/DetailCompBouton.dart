import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/CssBouton.dart';
import 'package:kiliwebsite/Component/HtmlBouton.dart';
import 'package:kiliwebsite/Component/JsBouton.dart';
import 'package:kiliwebsite/Reutilisable/Simpleprops.dart';


class DetailCompBouton extends StatefulWidget {
const DetailCompBouton({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _OngletsState createState() => _OngletsState();
}

class _OngletsState extends State<DetailCompBouton> {
  int _selectedTabIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return screenSize.width > 768
        ? SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => _onTabSelected(0),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  0.0), // Border radius à 0 pour enlever le coin arrondi
                            ),
                          ),
                          elevation: MaterialStateProperty.all(0),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.symmetric(
                                horizontal: 170,
                                vertical:
                                    20), // Ajustez les valeurs selon vos besoins
                          ),
                          backgroundColor: _selectedTabIndex == 0
                              ? MaterialStateProperty.all(
                                  const Color(0xFFFF3147))
                              : MaterialStateProperty.all(
                                  const Color(0xFFF2F6F9)),
                        ),
                        child: Text(
                          'Html',
                          style: TextStyle(
                              color: _selectedTabIndex == 0
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(
                        onPressed: () => _onTabSelected(1),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  0.0), // Border radius à 0 pour enlever le coin arrondi
                            ),
                          ),
                          elevation: MaterialStateProperty.all(0),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.symmetric(
                                horizontal: 170,
                                vertical:
                                    20), // Ajustez les valeurs selon vos besoins
                          ),
                          backgroundColor: _selectedTabIndex == 1
                              ? MaterialStateProperty.all(
                                  const Color(0xFFFF3147))
                              : MaterialStateProperty.all(
                                  const Color(0xFFF2F6F9)),
                        ),
                        child: Text(
                          'Css',
                          style: TextStyle(
                              color: _selectedTabIndex == 1
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(
                        onPressed: () => _onTabSelected(2),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  0.0), // Border radius à 0 pour enlever le coin arrondi
                            ),
                          ),
                          elevation: MaterialStateProperty.all(0),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.symmetric(
                                horizontal: 170,
                                vertical:
                                    20), // Ajustez les valeurs selon vos besoins
                          ),
                          backgroundColor: _selectedTabIndex == 2
                              ? MaterialStateProperty.all(
                                  const Color(0xFFFF3147))
                              : MaterialStateProperty.all(
                                  const Color(0xFFF2F6F9)),
                        ),
                        child: Text(
                          'Js',
                          style: TextStyle(
                              color: _selectedTabIndex == 2
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: _selectedTabIndex == 0
                        ? HtmlBouton()
                        : _selectedTabIndex == 1
                            ? CssBouton()
                            : _selectedTabIndex == 2
                                ? JsBouton()
                                : _selectedTabIndex == 3
                                    ? HtmlBouton()
                                    : JsBouton(),
                  ),
                ],
              ),
            ),
          )
        : SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40,
              ),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => _onTabSelected(0),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    0.0), // Border radius à 0 pour enlever le coin arrondi
                              ),
                            ),
                            elevation: MaterialStateProperty.all(0),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                              const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical:
                                      15), // Ajustez les valeurs selon vos besoins
                            ),
                            backgroundColor: _selectedTabIndex == 0
                                ? MaterialStateProperty.all(
                                    const Color(0xFFFF3147))
                                : MaterialStateProperty.all(
                                    const Color(0xFFF2F6F9)),
                          ),
                          child: Text(
                            'Html',
                            style: TextStyle(
                                color: _selectedTabIndex == 0
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                          onPressed: () => _onTabSelected(1),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    0.0), // Border radius à 0 pour enlever le coin arrondi
                              ),
                            ),
                            elevation: MaterialStateProperty.all(0),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                              const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical:
                                      15), // Ajustez les valeurs selon vos besoins
                            ),
                            backgroundColor: _selectedTabIndex == 1
                                ? MaterialStateProperty.all(
                                    const Color(0xFFFF3147))
                                : MaterialStateProperty.all(
                                    const Color(0xFFF2F6F9)),
                          ),
                          child: Text(
                            'Css',
                            style: TextStyle(
                                color: _selectedTabIndex == 1
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                          onPressed: () => _onTabSelected(2),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    0.0), // Border radius à 0 pour enlever le coin arrondi
                              ),
                            ),
                            elevation: MaterialStateProperty.all(0),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                              const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical:
                                      15), // Ajustez les valeurs selon vos besoins
                            ),
                            backgroundColor: _selectedTabIndex == 2
                                ? MaterialStateProperty.all(
                                    const Color(0xFFFF3147))
                                : MaterialStateProperty.all(
                                    const Color(0xFFF2F6F9)),
                          ),
                          child: Text(
                            'Js',
                            style: TextStyle(
                                color: _selectedTabIndex == 2
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: _selectedTabIndex == 0
                        ? HtmlBouton()
                        : _selectedTabIndex == 1
                            ? CssBouton()
                            : _selectedTabIndex == 2
                                ? JsBouton()
                                : _selectedTabIndex == 3
                                    ? HtmlBouton()
                                    : CssBouton(),
                  ),
                ],
              ),
            ),
          );
  }
}
