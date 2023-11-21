import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String paragraph;

  CustomCard({required this.title, required this.paragraph});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(paragraph),
          ],
        ),
      ),
    );
  }
}

class Templatebase extends StatefulWidget {
  const Templatebase({Key? key}) : super(key: key);

  @override
  State<Templatebase> createState() => _TemplatebaseState();
}

class _TemplatebaseState extends State<Templatebase>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomCard(
              title: 'Templates',
              paragraph:
                  'Lorem ipsum dolor sit amet consectetur.\nLorem ipsum dolor sit amet consectetur.\n Lorem ipsum dolor sit amet consectetur.\n  ',
            ),
            CustomCard(
              title: 'Formulaire',
              paragraph:
                  'Lorem ipsum dolor sit amet consectetur.\n Lorem ipsum dolor sit amet consectetur.\n Lorem ipsum dolor sit amet consectetur.\n  ',
            ),
            CustomCard(
              title: 'Bases de données',
              paragraph:
                  'Lorem ipsum dolor sit amet consectetur.\n Lorem ipsum dolor sit amet consectetur.\n Lorem ipsum dolor sit amet consectetur.\n  ',
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Card'),
        ),
        body: Templatebase(),
      ),
    ),
  );
}
