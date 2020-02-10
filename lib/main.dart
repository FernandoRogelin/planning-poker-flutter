import 'package:flutter/material.dart';
import 'package:hello_world/overview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planning Poker',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(('Planning Poker')),
          backgroundColor: Colors.blueGrey,
          actions: <Widget>[],
        ),
        body: Overview(),
      ),
    );
  }
}
