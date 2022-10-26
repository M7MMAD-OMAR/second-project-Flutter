import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Reset extends StatelessWidget {
  late Function() funReset;
  late int score = 0;

  Reset({Key? key, required this.funReset, required this.score}) : super(key: key);

  String get resultQuestioins {
    if(score >= 70) {
      return "Good";
    }else if (score >=40) {
      return "Nice";
    }else {
      return "Fuck You Go To School";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          const Text("Done!", style: TextStyle(color: Colors.red, fontSize: 30),
          ),
          Text("The Mark Is: $resultQuestioins Score is $score", style: TextStyle(color: black),),
          ElevatedButton(
            onPressed: funReset
            , child: const Text("Reset The App"),
          ),
        ],
      ),
    );
  }
}
