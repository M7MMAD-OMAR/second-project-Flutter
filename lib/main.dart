import 'package:flutter/material.dart';
import 'package:second_project/YearToAge.dart';

import 'BtnStyle.dart';
import 'Person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        // colorScheme: const ColorScheme.dark(),
        primarySwatch: Colors.green,
        fontFamily: "Apple Color Emoji",
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  // theme
  var green = Colors.green;
  late DateTime _selectedDate = DateTime.now();



  List<Person> list = [
    Person(name: "ali", age: 40, height: 188),
    Person(name: "ali", age: 80, height: 190),
    Person(name: "ali", age: 30, height: 300),
  ];

  // button sheet
  void bottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext _, int index) {
              return Card(
                margin: const EdgeInsets.only(top: 50, bottom: 40),
                color: Colors.yellow,
                elevation: 5,
                shadowColor: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("The name is: ${list[index].name}"),
                    Text("age: ${list[index].age}"),
                    Text("height: ${list[index].height}"),
                  ],
                ),
              );
            },
          );
        });
  }

  void _ShowDateDialog() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 1, 15),
        lastDate: DateTime.now()
    ).then((value) =>
        setState((){
          value == null ? null : _selectedDate = value;
        })
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: _ShowDateDialog,
          child:  Text("$_selectedDate"),
        ),
      ),
    );
  }
}
