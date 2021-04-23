import 'dart:html';

import 'package:flutter/material.dart';

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
class MyApp extends StatelessWidget {
  //build method will take in the object 'context' automatically
  //BuildContext is a type annotation
  //build method is called whenever DART needs to show something on the screen.
  //build method will have a return type 'widget' because it returns widgets
  Widget build(BuildContext context) {
    //MaterialApp() is a widget out here
    //Base setup to turn combination of widgets into a real app that can be rendered
    //MaterialApp will take 'Named arguments' no data passing, only by name
    //MaterialApp is a class not a function. It takes arguments via constructor feature
    //return MaterialApp(home: Text('Hello Madam ki koro?'));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Farmly app'),
        ),
        body: Text('Something just like this'),
      ),
    );
  }
}
