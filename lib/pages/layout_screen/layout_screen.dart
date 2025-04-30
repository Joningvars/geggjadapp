import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geggjadapp/utils/getOrientation.dart';
import 'package:geggjadapp/widgets/build_box.dart';

class LayoutDemoScreen extends StatefulWidget {
  @override
  State<LayoutDemoScreen> createState() => _LayoutDemoScreenState();
}

class _LayoutDemoScreenState extends State<LayoutDemoScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final os = Platform.operatingSystem;
    final width = size.width;
    final height = size.height;

    final _buildLanscape = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("PORTRAIT"), Text("PORTRAIT"), Text("PORTRAIT")],
            ),
          ),
          Container(
            color: Colors.purple,
            child: Row(children: [buildBox(), buildBox()]),
          ),
          Container(
            color: Colors.black,
            child: Row(children: [buildBox(), buildBox()]),
          ),
        ],
      ),
    );

    final _buildPortrait = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [buildBox(), buildBox()],
            ),
          ),
          Container(
            color: Colors.blue,
            child: Row(children: [buildBox(), buildBox()]),
          ),
          Container(
            color: Colors.blue,
            child: Row(children: [buildBox(), buildBox()]),
          ),
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Layout Widgets')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              getOrientation(context) == Orientation.portrait
                  ? _buildPortrait
                  : _buildLanscape,
        ),
      ),
    );
  }
}
