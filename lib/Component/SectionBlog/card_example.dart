import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  final String image;
  final String img;
  final String title;
  final String subTitle;

  const CardExample({
    Key? key,
    required this.image,
    required this.img,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint('Card tapped: $title');
      },
      child: CustomCard(
        image: image,
        img: img,
        title: title,
        subTitle: subTitle,
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String image;
  final String img;
  final String title;
  final String subTitle;

  const CustomCard({
    Key? key,
    required this.image,
    required this.img,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 150.0,
            width: 400.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    img,
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 8.0),
                Text(title),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(subTitle),
          ),
        ],
      ),
    );
  }
}
