

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  late String titleAnswer;
  late Function() funAnswer;


  Answer({Key? key, required this.titleAnswer, required this.funAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: funAnswer,
        child: Text(titleAnswer),
      ),
    );
  }
}


