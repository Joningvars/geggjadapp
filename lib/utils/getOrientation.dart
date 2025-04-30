import 'package:flutter/material.dart';

getOrientation(BuildContext context) {
  final orientation = MediaQuery.of(context).orientation;

  return orientation;
}
