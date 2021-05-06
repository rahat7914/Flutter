import 'dart:html';

import 'package:flutter/material.dart';
import './question.dart';

//main is the special kind of function that is executed at the start of program
//Flutter is a strongly typed language
// void main() {
//   //runApp is a function provided by material.dart it runs our flutter app
//   //takes the widget tree and draws something based on that tree
//   //Have to tell which widget to run -> MyFarmlyApp
//   //Execute like a function with paranthesis, otherwise it's a type
//   //You instantiate an object based on a class by adding a paranthesis
//   runApp(MyApp());
// }
//function with just one expression can be written like this
void main() => runApp(MyApp());

//MyFarmlyApp is a class that inherits baseclass StatelessWidget
//MyFarmlyApp inherits the properties of SW class so it can turn into SW which futter understands
@override
//class MyApp extends Statelesswidget : Here the states of widget can not change
class MyApp extends StatefulWidget {
  @override
  //CreateState forces flutter to re-execute tht build method again, that makes it go throught the widget tree.
  //In this case flutter does not render every pixel, but it knows which widget to re-render.
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//We have to make DART understand that MyAppState belongs to the MyApp class. Two connections need to be made
//First add <MyApp> [pointer] after State [generic class] that tells DART that this State belongs to MyApp class
//to Protect classes, properties from overrides by different flies, we simply add (_) _MyAppSate to declare this is private within this class
//and cant be accessed from anywhere else.
class _MyAppState extends State<MyApp> {
//Tyring to display questions dynamically
  var _questionIndex = 0;

  void _answerQuestion() {
    // We use setState to tell Dart we are about to change the state
    // widget associated with that change only renders
    setState(() {
      // print('Chosen this answer');
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  void answerAnotherQuestion() {
    print('Another question is chosen');
  }

  //build method will take in the object 'context' automatically
  //BuildContext is a type annotation
  //build method is called whenever DART needs to show something on the screen.
  //build method will have a return type 'widget' because it returns widgets
  Widget build(BuildContext context) {
    //add an backslash (\) while using (') in words. Example of List
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'How many variables can you take into account?',
      'Does learning flutter benefit you?'
    ];
    //MaterialApp() is a widget out here
    //Base setup to turn combination of widgets into a real app that can be rendered
    //MaterialApp will take 'Named arguments' no data passing, only by name
    //MaterialApp is a class not a function. It takes arguments via constructor feature
    //return MaterialApp(home: Text('Hello Madam ki koro?'));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Farmly application'),
        ),
        //body can't take more than one widget. If passed more than one, it will be like
        //adding another positional argument in scaffold. But Scaffold does't take more.
        //body: Text('This is going to be Farmly app'),
        body: Column(
          children: [
            //previously it was row but the align was not working. not much space on sideways
            //now working on the column [vertical] enough sapce on sideways
            //column sets everything centered in the table, where row keeps eveyrhing on left/right
            Column(
              children: [
                //Text(questions.elementAt(0)),
                Question(questions[_questionIndex]),
              ],
            ),
            //Raised button is ElevatedButton
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Column(
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      //onPressed takes a function that takes no argument () and return type is void
                      //add function in the same class to make it a stand alone unit
                      //with paranthesis dart is executiing the funtion at runtime and trying to get a value. but void so no value
                      //In order to make onPressed work we have to pass a pointer of that method by removing the paranthesis. This way the method only executes when onPressed gets activated upon click
                      onPressed: _answerQuestion,
                      child: Text('Answer 01'),
                    ),
                    ElevatedButton(
                      //answerQuestion is a named funtion because it has a same. Not anonymous function
                      onPressed: answerAnotherQuestion,
                      child: Text('Answer 02'),
                    ),
                    ElevatedButton(
                      //Example of anonymous funtion () => single line. We use this if I dont want to call this function anywhere else.
                      onPressed: () => print('Answer 03 is chosen'),
                      child: Text('Answer 03'),
                    ),
                    ElevatedButton(
                      //Example of anonymous function () {funtion body} we use it, when this funtion is element specific
                      onPressed: () {
                        print('Answer 04 is chosen somethin jsut like this');
                      },
                      child: Text('Answer 04'),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
