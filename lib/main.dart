import 'package:flutter/material.dart';
import 'package:second_project/quiz.dart';
import 'package:second_project/reset.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

Color black = Colors.black;
Color white = Colors.white;

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar Testing"),
        ),
        body: ,
      ),
    );
  }
}
