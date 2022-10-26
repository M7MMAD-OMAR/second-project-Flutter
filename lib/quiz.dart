import 'package:flutter/cupertino.dart';
import 'package:second_project/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  late List<Map<String, Object>> questionAndAnswer;
  late int indexQuestion;
  late Function(int score) tempAnswer;

  Quiz({Key? key, required this.questionAndAnswer, required this.indexQuestion,
  required this.tempAnswer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question: questionAndAnswer[indexQuestion]['question']
          as String,
        ),
        ...(questionAndAnswer[indexQuestion]['answers']
        as List<Map<String, Object>>)
            .map((answer) {
          return Answer(titleAnswer: answer['title'].toString(),
            funAnswer: () => tempAnswer(int.parse(answer['decre'].toString())), );
        }),
      ],
    );
  }
}
