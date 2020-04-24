import 'package:flutter/material.dart';
import 'package:ch4_starter_exercise/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starter template',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}
