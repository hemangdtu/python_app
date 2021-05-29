import 'package:flutter/material.dart';
import 'package:python_app/meta/constants.dart';

class QuestionsPage extends StatefulWidget {
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  @override
  Widget build(BuildContext context) {
    Map<int, List<String>> questions = {
      0: ["Question.1.", "Answer.1."],
      1: ["Question.2.", "Answer.2."],
      2: ["Question.3.", "Answer.3."],
      3: ["Question.4.", "Answer.4."],
      4: ["Question.4.", "Answer.4."],
      5: ["Question.4.", "Answer.4."],
      6: ["Question.4.", "Answer.4."],
      7: ["Question.4.", "Answer.4."],
      8: ["Question.4.", "Answer.4."],
      9: ["Question.4.", "Answer.4."],
      10: ["Question.4.", "Answer.4."],
    };

    return Scaffold(
      body: Container(
        decoration: gradientSet,
        child: ListView.builder(
            itemCount: questions.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ExpansionTile(
                  title: Text(
                    questions[index][0],
                    style: TextStyle(color: Colors.black),
                  ),
                  children: [
                    Text(
                      questions[index][1],
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                  iconColor: Colors.black,
                  collapsedIconColor: Colors.black,
                  backgroundColor: Colors.white,
                  collapsedBackgroundColor: Colors.white38,
                ),
              );
            }),
      ),
    );
  }
}
