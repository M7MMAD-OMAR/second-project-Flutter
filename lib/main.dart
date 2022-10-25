import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/question.dart';


void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: Column(
          children: [
            Question(question: "How Are You",)
          ],
        ),
      ),
    );
  }
}

