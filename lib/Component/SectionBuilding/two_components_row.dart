// two_components_row.dart
import 'package:flutter/material.dart';

class TwoComponentsRow extends StatelessWidget {
  final Widget leftComponent;
  final Widget rightComponent;

  const TwoComponentsRow({
    Key? key,
    required this.leftComponent,
    required this.rightComponent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          // Composant de gauche (plus petit)
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: leftComponent,
            ),
          ),
          // Composant de droite (plus grand)
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: rightComponent,
            ),
          ),
        ],
      ),
    );
  }
}
