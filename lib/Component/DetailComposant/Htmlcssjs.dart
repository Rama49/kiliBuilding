import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/DetailComposant/DetailComposant.dart';
import 'package:kiliwebsite/Component/Sectionrendu/Rendu.dart';

class htmlcssjs extends StatelessWidget {
  const htmlcssjs({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
      appBar: AppBar(
        title: const Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'Détails composants',
            style: TextStyle(
              color: Colors.red, // Changer la couleur du texte ici
            ),
          ),
        ),
      ),
     body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Description'),
              Text('Lorem ipsum dolor sit amet consectetur. Commodo et varius adipiscing enim adipiscing sit. Tortor aliquam ipsum molestie morbi lobortis consectetur egestas. Lobortis vitae arcu ornare diam ligula massa turpis elit ullamcorper. Convallis nunc dictum vestibulum ultricies. Ac consequat malesuada sit non odio orci eget. Eleifend quis id ac at. Adipiscing quis sollicitudin auctor mauris nunc ornare. Mauris mi pellentesque diam arcu velit vehicula egestas. Mattis a sit imperdiet et pellentesque felis mattis porta velit. Nulla et feugiat fringilla urna sit ac. Pellentesque viverra risus donec ante vel at tempor augue tincidunt.Massa neque turpis lectus faucibus sagittis cras. Purus integer quisque in donec. In a volutpat mi urna. Mollis ultricies etiam odio enim vel feugiat dictum lobortis curabitur. Massa sagittis orci dolor suspendisse nec. Luctus ultricies pellentesque elit feugiat. Placerat feugiat eget in in. Dolor sit enim lobortis quis. Et egestas fringilla et at ut leo imperdiet at sit. Vel tellus ipsum sit in eget. Viverra vulputate hendrerit tortor in morbi posuere vitae gravida Habitant nibh tellus non commodo. Sed et vestibulum sit mattis scelerisque et et lacus nullam. Dictumst phasellus elementum vulputate consequat at mauris nisl. A ultrices pharetra massa congue mattis malesuada mi. Tempor facilisi non quam odio volutpat euismod lacus nullam porttitor. Ultrices venenatis dolor risus ac condimentum ut. Purus consectetur gravida at at.Et enim semper sagittis ac nulla. Etiam enim pretium auctor enim lorem arcu. Urna augue scelerisque in sapien purus porttitor sit quam duis. Eu purus a id interdum nunc velit. Sem blandit lectus nunc non feugiat a rhoncus. Purus feugiat eu turpis quis. Mi cras massa gravida adipiscing pellentesque scelerisque massa morbi rutrum. Arcu egestas convallis viverra amet commodo eu elementum. Non nec pulvinar at quam urna.'),
              Rendu(),
              DetailComposant(),
            ],
          ),
        ),
      ),
        );
  }
}
