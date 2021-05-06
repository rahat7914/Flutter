import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //adding a property (var within a class) questionText that will hold the questions
  //Goal is to build a constructer through which I can pass the questions to questionText container
  //final tells dart that never change the value of questionText after the constructor initializes.
  final String questionText;
  // A constructer that will take question text as argument (postional not named {}) and store it into the questionText
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    //align center didnt work because the Text widget only takes the space it needs
    //adding the container: the Text widget will take needed space within that container
    //Still didnt work. because the width of the container is as big as text
    //added width of container double.infinity tells flutter to take the maximum space svailable on width
    //Now works because text wodget has more space on width and now can align on center
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,

        style: TextStyle(
          // This is for mroe generic use [Enum] predefined
          fontSize: 28, color: Colors.green,
          //color: Color(0xFF232323), for adding custom color 0xFF+Hex code
        ),
        //Here TextAlign is an enum. It's like predefined values. Something useful for the computer but not for us
        textAlign: TextAlign.center,
      ),
    );
  }
}
