import 'package:flutter/material.dart';
import 'package:geggjadapp/pages/layout_screen/layout_screen.dart';
import 'package:geggjadapp/widgets/build_box.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [buildBox(), buildBox(), buildBox(), buildBox()]);
  }
}
