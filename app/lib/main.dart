import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.red), home: HomePage()));
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  void increment() {
    count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ("Payflow app"),
      ),
      body: Center(
        child: Text(
          "Contador\n$count",
          textAlign: TextAlign.center,
        )),
        floatingActionButton:  FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            increment();
          }
        ),
      );
  }
}