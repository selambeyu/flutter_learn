import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
import './_randomWords.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return MaterialApp(

      home: RandomWord(),
    );
  }

}



