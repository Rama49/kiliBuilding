// building.dart
import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/SectionBuilding/ComponentLibrary.dart';
import 'package:kiliwebsite/Component/SectionBuilding/RenderComponent.dart';
import 'two_components_row.dart';

class BuildingComponent extends StatelessWidget {
  const BuildingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return TwoComponentsRow(
      leftComponent: LeftComponent(),
      rightComponent: RightComponent(),
    );
  }
}
