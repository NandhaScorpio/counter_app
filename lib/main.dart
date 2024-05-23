import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("CounterApp"),
        ),
        body: Column(
          children: [
            Text(
              count.toString(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
            MaterialButton(onPressed: () {
                setState(() {
                  count = count + 1;
                });
              }, child: Text("Increament",),),
              MaterialButton(onPressed: () {
                setState(() {
                  count = count - 1;
                });
              },child: Text("Decreament"),)
              ]
        ),
      ),
    );
  }
}


