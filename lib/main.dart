import 'package:flutter/material.dart';

import 'Page1.dart';
import 'Page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late double _valueSlider = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${_valueSlider.round()}"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  color: Colors.green,
                  blurRadius: 9,
                  offset: Offset(2, 4)
                ),]
              ),
              transform: Matrix4.rotationX(_valueSlider)..translate(20, 20, 20),
              margin: EdgeInsets.only(top: 90, bottom: 90),
              width: 50,
              height: 50,
            ),
            Slider(onChanged: (double value) => setState( ()=> _valueSlider = value),
              value: _valueSlider,
              label: "$_valueSlider",
              min: 0,
              max: 10,
              activeColor: Colors.red,
              thumbColor: Colors.green,
              divisions: 100,
            ),
          ],
        ),
      )
    );
  }
}
