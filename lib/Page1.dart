
import 'package:flutter/material.dart';

import 'Page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("First Page"),
      ),
      body: InkWell(
        child: Text("Go to Page 2"),
        onTap: () => Navigator.of(context).pushReplacementNamed(
          '/',
        ),
      ),
    );
  }
}
