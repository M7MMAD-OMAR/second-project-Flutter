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
          bottom: TabBar(
            tabs: <Widget> [
              Tab(icon: Icon(Icons.account_balance),text: "Account Balance",
             ),
              Tab(icon: Icon(Icons.account_balance_wallet), text: "Accouont Balance Wallet",
             ),
              Tab(icon: Icon(Icons.add_alert), text: "Add Alert",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text("First Page"),
            Text("Second Page"),
            Page1(),
          ],
        )
      ),
    );
  }
}
