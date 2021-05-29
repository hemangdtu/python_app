import 'package:auto_animated/auto_animated.dart';
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
        child: LiveList(
          delay: Duration(microseconds: 1),
          showItemInterval: Duration(milliseconds: 50),
          showItemDuration: Duration(milliseconds: 500),
          // visibleFraction: 0.05,
          scrollDirection: Axis.vertical,
          // reAnimateOnVisibility: false,
          itemCount: questions.length,
          itemBuilder:
              (BuildContext context, int index, Animation<double> animation) {
            return FadeTransition(
              opacity: Tween<double>(
                begin: 0,
                end: 1,
              ).animate(animation),
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(0, -0.1),
                  end: Offset.zero,
                ).animate(animation),
                child: Padding(
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
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// ListView.builder(
//             itemCount: questions.length,
//             itemBuilder: (BuildContext context, int index) {
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ExpansionTile(
//                   title: Text(
//                     questions[index][0],
//                     style: TextStyle(color: Colors.black),
//                   ),
//                   children: [
//                     Text(
//                       questions[index][1],
//                       style: TextStyle(color: Colors.black),
//                     )
//                   ],
//                   iconColor: Colors.black,
//                   collapsedIconColor: Colors.black,
//                   backgroundColor: Colors.white,
//                   collapsedBackgroundColor: Colors.white38,
//                 ),
//               );
//             })