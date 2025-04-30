import 'package:flutter/material.dart';

class WidgetExampleScreen extends StatefulWidget {
  const WidgetExampleScreen({super.key});

  @override
  State<WidgetExampleScreen> createState() => _WidgetExampleScreenState();
}

class _WidgetExampleScreenState extends State<WidgetExampleScreen> {
  var containerList = [
    Container(
      height: 400,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: Colors.grey.shade300),
      ),
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.all(30),
      child: Text("Hello World!"),
    ),
    Container(
      height: 400,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: Colors.grey.shade300),
      ),
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.all(30),
      child: Text("Hello World!"),
    ),
    Container(
      height: 400,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: Colors.grey.shade300),
      ),
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.all(30),
      child: Text("Hello World!"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    bool isCool = false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Checkbox(
              value: isCool,
              onChanged: (isCool) {
                isCool = !true;
              },
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 2,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      padding: EdgeInsets.all(30),
                      margin: EdgeInsets.all(30),
                      child: Text("Hello World!"),
                    ),
                    Container(
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 2,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      padding: EdgeInsets.all(30),
                      margin: EdgeInsets.all(30),
                      child: Text("Hello World!"),
                    ),

                    Card(
                      elevation: 6,
                      color: Colors.orangeAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text("Hello World!"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
