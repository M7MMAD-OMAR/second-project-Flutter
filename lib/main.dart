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

  List<Widget> _listPages = [
    Scaffold(
        body: Text("First Page"),
      ),
    Scaffold(
      body: Text("Second Page"),
    ),
  ];

  late int _selectedPage = 0;

  void _changePage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawerScrimColor: Colors.grey.withOpacity(0.8),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  "Person Name",
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text("Hi I'm sub title"),
                trailing: Icon(Icons.person),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Main Screen"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.shifting,
          onTap: _changePage,
          currentIndex: _selectedPage,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.add_alert,), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.remove_circle,), label: "Remove"),
          ],

        ),
        body: _listPages[_selectedPage],
        ),
    );
  }
}
