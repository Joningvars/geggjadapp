import 'package:flutter/material.dart';
import 'package:geggjadapp/pages/layout_screen/layout_screen.dart';
import 'package:geggjadapp/widgets/build_box.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      alignment: Alignment.center,
      child: buildBox(),
    );
  }
}
