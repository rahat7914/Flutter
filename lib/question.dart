import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //adding a property (var within a class) questionText that will hold the questions
  //Goal is to build a constructer through which I can pass the questions to questionText container
  String questionText;
  // A constructer that will take question text as argument (postional not named {}) and store it into the questionText
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
