import 'dart:ui';

import 'package:flutter/material.dart';

class LayoutSection extends StatelessWidget {
  final String title;
  final Widget child;

  LayoutSection({required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(height: 8),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(8),
            child: child,
          ),
        ),
      ],
    );
  }
}
