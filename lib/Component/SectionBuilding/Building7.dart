// building.dart
import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/SectionBuilding/left_component.dart';
import 'package:kiliwebsite/Component/SectionBuilding/RenderComponent.dart';
import 'package:kiliwebsite/Component/SectionBuilding/listView.dart';
import 'package:kiliwebsite/Component/SectionBuilding/listView7.dart';
import 'two_components_row.dart';

class BuildingComponent7 extends StatelessWidget {
  const BuildingComponent7({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Container(
      child: TwoComponentsRow(
      leftComponent: LeftComponent(),
      rightComponent: MyList7(),
      
    ),
    ));
  }
}
