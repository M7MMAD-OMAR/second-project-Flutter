

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final question;

  const Question({Key? key, this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      alignment: Alignment.center,
      child: Text(question,
        style: TextStyle(
          fontSize: 30,
          color: Colors.green,

        ),),
    );
  }
}

