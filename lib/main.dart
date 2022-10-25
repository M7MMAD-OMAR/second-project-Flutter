import 'package:flutter/material.dart';
import 'package:second_project/answer.dart';
import 'package:second_project/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int indexQuestion = 0;
  late List<Map<String, Object>> questionsAndAnswers = [
    {
      'question': "How Are You",
      'answers': ["Fine", "Fuck", "nice"],
    },
    {
      'question': "What Do You Do",
      'answers': ["Playing", "Fat boll", "bastBoll", "Cocking"],
    },
    {
      'question': "What Do You Do Eating Dog!!1",
      'answers': ["Playing", "Cocking"],
    }
  ];

  void tempAnswer() {
    if(indexQuestion == questionsAndAnswers.length-1) {
      indexQuestion = -1;
    }
    setState(() => ++indexQuestion);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar Testing"),
        ),
        body: Column(
          children: [
            Question(
              question:
                  questionsAndAnswers[indexQuestion]['question'] as String,
            ),
            ...(questionsAndAnswers[indexQuestion]['answers'] as List<String>).map((answer){
              return Answer(titleAnswer: answer, funAnswer: tempAnswer);
            }),
          ],
        ),
      ),
    );
  }
}
