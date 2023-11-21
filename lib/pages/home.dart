import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/SectionBlog/card_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:[
            CardList()
          ],
        ),
      ),
    );
  }
}
