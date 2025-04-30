import 'package:flutter/material.dart';
import 'package:geggjadapp/pages/layout_screen/layout_screen.dart';
import 'package:geggjadapp/widgets/build_box.dart';

class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [buildBox(), buildBox(), buildBox()],
    );
  }
}
