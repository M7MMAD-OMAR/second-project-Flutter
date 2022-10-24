
import 'package:flutter/material.dart';

import 'Page1.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Second Page"),
      ),
      body: InkWell(
        child: Text("Go To Page 1"),
        onTap: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) {
            return Page1();
          }
          ),
        ),
      ),
    );
  }
}
