import 'package:flutter/material.dart';

class DomaineCart extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String sousTitle;

  const DomaineCart({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.sousTitle,
    required TextStyle subTitleStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint('Card tapped: $title');
      },
      child: CustomCard(
        image: image,
        title: title,
        subTitle: subTitle,
        sousTitle: sousTitle,
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String sousTitle;

  const CustomCard({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.sousTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Image.asset(
                  image,
                  height: 130.0,
                  width: 100.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(title),
                        SizedBox(width: 8.0),
                        
                      ],
                    ),
                    Container(
                      width: 390, // Set your desired width
                      child: Text(
                        subTitle,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                          
                        ),
                      ),
                    ),
                    Text(sousTitle),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
