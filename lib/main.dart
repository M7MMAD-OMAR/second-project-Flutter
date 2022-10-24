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
      routes: {
        '/home' : (context) => MyHomePage(),
        'pageOne' : (context) => Page1(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Text("First Page"),
              onTap: () {
                Navigator.of(context).pushNamed(
                  'pageOne',
                );
              },
            ),
            InkWell(
              child: Text("Second Page"),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Page2())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
