import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/sectionEntrepreneurs/Entrepreneur.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Entrepreneur(),
          ],
        ),
      ),
    );
  }
}
