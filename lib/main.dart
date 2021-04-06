import 'package:flutter/material.dart';

void main() {
  //runApp is a function provided by material.dart it runs our flutter app
  //takes the widget tree and draws something based on that tree
  //Have to tell which widget to run -> MyFarmlyApp
  //Execute like a function with paranthesis, otherwise it's a type
  //You instantiate an object based on a class by adding a paranthesis
  runApp(MyFarmlyApp());
}

//MyFarmlyApp is a class that inherits subclass StatelessWidget
//MyFarmlyApp inherits the properties of SW class so it can turn into SW
class MyFarmlyApp extends StatelessWidget {
  //build method will take in the object 'context' automatically
  //BuildContext is a type annotation
  //build method is called whenever DART needs to show something on the screen.
  //build method will have a return type 'widget' because it returns widgets
  Widget build(BuildContext context) {
    //MaterialApp() is a widget out here
    //Base setup to turn combination of widgets into a real app that can be rendered
    //MaterialApp will take 'Named arguments' no data passing, only by name
    //MaterialApp is a class not a function. It takes arguments via constructor feature
    return MaterialApp(
      home: Text('Hello world!'),
    );
  }
}
